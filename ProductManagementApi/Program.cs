using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.OpenApi.Models;

public class Program
{
    public static void Main(string[] args)
    {
        CreateHostBuilder(args).Build().Run();
    }

    public static IHostBuilder CreateHostBuilder(string[] args) =>
        Host.CreateDefaultBuilder(args)
            .ConfigureWebHostDefaults(webBuilder =>
            {
                webBuilder.ConfigureServices(services =>
                {
                    services.AddControllers();
                    // Enable CORS
                    services.AddCors(options =>
                        {
                            options.AddPolicy("AllowOrigin",
                                builder =>
                                {
                                    builder.AllowAnyOrigin()
                                        .AllowAnyMethod()
                                        .AllowAnyHeader();
                                });
                        }
                    );

                    // Register DbContext
                    services.AddDbContext<ApplicationDbContext>(options =>
                        options.UseSqlServer("Server=DESKTOP-IB90627;Database=ProductManagementDB;User Id=ProductManagementApp;Password=y2fy5FgPL95c1k;TrustServerCertificate=True",
                        sqlServerOptions => sqlServerOptions.EnableRetryOnFailure())
                    );

                    // Register the Swagger generator
                    services.AddSwaggerGen(c =>
                    {
                        c.SwaggerDoc("v1", new OpenApiInfo { Title = "Product Management API", Version = "v1" });
                    });
                });

                webBuilder.Configure(app =>
                {
                    // Enable middleware to serve generated Swagger as a JSON endpoint
                    app.UseSwagger();

                    // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
                    // specifying the Swagger JSON endpoint
                    app.UseSwaggerUI(c =>
                    {
                        c.SwaggerEndpoint("/swagger/v1/swagger.json", "Your API V1");
                    });

                    app.UseRouting();
                    
                    app.UseCors("AllowOrigin");

                    app.UseEndpoints(endpoints =>
                    {
                        endpoints.MapControllers();
                    });
                });
            });
}