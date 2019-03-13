//
//  main.swift
//  Crawl
//
//  Created by Mac on 2019-03-12.
//  Copyright © 2019 Enrique. All rights reserved.
//

import Foundation

func systemCrawler() {
    let fileManager = FileManager.default
    let filesUrl = FileManager.default.currentDirectoryPath
    
    if fileManager.fileExists(atPath: filesUrl) {
        var isDirectory: ObjCBool = false
        // Check if it is a directory or not
        fileManager.fileExists(atPath: filesUrl, isDirectory: &isDirectory)
        var numFiles = 0
        var numDirec = 0
        do {
            if isDirectory.boolValue == true {
                var arrayDirectories = try fileManager.contentsOfDirectory(atPath: filesUrl)
                for direc in arrayDirectories {
                    if (arrayDirectories.count - 1 != numDirec) {
                        if (direc.first != nil) {
                            print("├─ \(direc)")
                            arrayDirectories = try fileManager.contentsOfDirectory(atPath: filesUrl)
                            for more in arrayDirectories {
                                if (arrayDirectories.count - 1 != numFiles) {
                                    print("│    ├─ \(more)")
                                } else {
                                    print("│    └─ \(more)")
                                }
                            }
                            numDirec += 1
                            systemCrawler()
                        }
                    } else {
                        print("└─ \(direc)")
                        numDirec += 1
                    }
                }
                print("\(numDirec) directories, \(numFiles) files")
            } else {
                numFiles += 1
            }
        } catch {
            print("Error while enumerating files \(filesUrl): \(error.localizedDescription)")
        }
    } else {
        print("Error, the URL \(filesUrl) don't exist.")
    }
}

// Print the files
systemCrawler()
