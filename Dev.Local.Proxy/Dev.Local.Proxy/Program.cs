var builder = WebApplication.CreateBuilder(args);

builder.Logging.AddConsole();

builder.Services.AddControllers();
builder.Services.AddReverseProxy()
    // Initialize the reverse proxy from the "ReverseProxy" section of configuration
    .LoadFromConfig(builder.Configuration.GetSection("ReverseProxy"));

var app = builder.Build();

app.UseStaticFiles();
app.UseRouting();
app.MapReverseProxy();

app.Run();