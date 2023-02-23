using Xunit;

namespace CoverletDemoTests;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        Assert.True(CoverletDemoLibraryOne.Class1.ReturnTrueFromLibraryTwo());
    }
}