using myAPi;

string connectionstring = "Server=.;Database=Pluto;User Id=sa;Password=Password123;";
SQL sql = new SQL(connectionstring);

var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

// Add static files, served from wwwroot default
app.UseDefaultFiles();
app.UseStaticFiles();

app.MapGet("/contacts", () =>
{
    List<Contact>? contacts = sql.GetContacts();

    if (contacts != null)
        Results.Ok(sql.GetContacts());

    return Results.BadRequest();
});

app.MapGet("/contact", (int id) =>
{
    var contact = sql.GetContact(id);

    if (contact.id == id)
        return Results.Ok();

    return Results.NotFound();
});

app.MapPost("/contact", (Contact contact) =>
{
    if (sql.AddContact(contact))
        return Results.Ok(contact);

    return Results.NotFound();
});

app.MapDelete("/contact", (int id) =>
{
    if (sql.DeleteContact(id))
        return Results.Ok(id);

    return Results.NotFound();
});

app.MapPut("/contact", (Contact contact) => Results.Ok(sql.UpdateContact(contact)));

app.Run();