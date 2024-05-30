using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

[Route("api/[controller]")]
[ApiController]
public class ProductsController : ControllerBase {
    private readonly ApplicationDbContext _context;

    public ProductsController(ApplicationDbContext context) {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<Product>>> GetProducts() {
        return await _context.Products.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Product>> GetProduct(string id) {
        var product = await _context.Products.FindAsync(id);
        if (product == null) {
            return NotFound();
        }
        return product;
    }

    [HttpPost]
    public async Task<ActionResult<Product>> PostProduct(Product product) {
        _context.Products.Add(product);
        await _context.SaveChangesAsync();
        return CreatedAtAction("GetProduct", new { id = product.ProductId }, product);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutProduct(string id, Product product) {
        if (id != product.ProductId) {
            return BadRequest();
        }
        _context.Entry(product).State = EntityState.Modified;
        try {
            await _context.SaveChangesAsync();
        } catch (DbUpdateConcurrencyException) {
            if (!ProductExists(id)) {
                return NotFound();
            } else {
                throw;
            }
        }
        return NoContent();
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteProduct(string id) {
        var product = await _context.Products.FindAsync(id);
        if (product == null) {
            return NotFound();
        }
        _context.Products.Remove(product);
        await _context.SaveChangesAsync();
        return NoContent();
    }

    private bool ProductExists(string id) {
        return _context.Products.Any(e => e.ProductId == id);
    }
}