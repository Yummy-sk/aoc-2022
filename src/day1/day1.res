let parseInput = () =>
  Input.readFile("day1")
  ->Js.String2.split("\n\n")
  ->Belt.Array.map(x =>
    x->Js.String2.split("\n")->Belt.Array.map(x => x->Belt.Int.fromString->Belt.Option.getExn)
  )

let getSumOfCalories = calories => calories->Belt.Array.reduce(0, (acc, x) => acc + x)

let getTop3Calories = list =>
  list->Js.Array2.sortInPlaceWith((a, b) => b - a)->Js.Array2.slice(~start=0, ~end_=3)

let getMaxCalorie = list => list->Js.Math.maxMany_int

let part1 = () => parseInput()->Belt.Array.map(getSumOfCalories)->getMaxCalorie->Js.log
let part2 = () =>
  parseInput()->Belt.Array.map(getSumOfCalories)->getTop3Calories->getSumOfCalories->Js.log

part1()
part2()
