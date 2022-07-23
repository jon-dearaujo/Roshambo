//
//  Options.swift
//  Roshambo
//
//  Created by Jonathan De Araújo Silva on 22/07/22.
//

import Foundation

enum Options: String, CaseIterable {
    case Rock, Paper, Scissors

    func getResult(_ other: Options) -> Result {
        switch self {
        case .Rock:
            if other == .Paper {
                return Result(image: "PaperCoversRock", text: "Paper covers Rock. You Lose!")
            } else if other == .Scissors {
                return Result(image: "RockCrushesScissors", text: "Rock crushes Scissors. You Win!")
            } else {
                return Result(image: "itsATie", text: "It's A Tie!")
            }

        case .Paper:
            if other == .Rock {
                return Result(image: "PaperCoversRock", text: "Paper covers Rock. You Win!")
            } else if other == .Scissors {
                return Result(image: "ScissorsCutPaper", text: "Scissors cut Paper. You Lose!")
            } else {
                return Result(image: "itsATie", text: "It's A Tie!")
            }
        case .Scissors:
            if other == .Rock {
                return Result(image: "RockCrushesScissors", text: "Rock crushes Scissors. You Lose!")
            } else if other == .Paper {
                return Result(image: "ScissorsCutPaper", text: "Scissors cut Paper. You Win!")
            } else {
                return Result(image: "itsATie", text: "It's A Tie!")
            }
        }
    }
}

struct Result {
    let image: String
    let text: String
}
