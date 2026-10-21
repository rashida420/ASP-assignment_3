using System;

abstract class Shape
{
  public Shape(string name = "NoName")
  { Name = name; }

  public string Name { get; set; }

  public virtual void Draw()
  {
    Console.WriteLine("Inside Shape.Draw()");
  }
  public void ShowType()
  {
    Console.WriteLine("Type: Shape");
  }
}

class Circle : Shape{
  public Circle() {}
  public Circle(string name) : base(name) {}
  public override void Draw(){
    Console.WriteLine("Drawing {0} the Circle", Name);
  }
  public new void ShowType()
  {
    Console.WriteLine("Type: Circle");
  }
}
class Hexagon : Shape
{
  public Hexagon() {}
  public Hexagon(string name) : base(name) {}
  public override void Draw()
  {
    Console.WriteLine("Drawing {0} the Hexagon", Name);
  }
  public new void ShowType()
  {
    Console.WriteLine("Type: Hexagon");
  }
}

