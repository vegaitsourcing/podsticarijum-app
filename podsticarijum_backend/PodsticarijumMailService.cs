using System.Net.Mail;
using System.Net;
using Microsoft.Extensions.Options;
using System.Text.RegularExpressions;

namespace podsticarijum_backend;

public class PodsticarijumMailService : IPodsticarijumMailService
{
    private readonly MailDataConfig _mailConfig;
    public PodsticarijumMailService(IOptions<MailDataConfig> mailConfig)
    {
        ArgumentNullException.ThrowIfNull(mailConfig);
        _mailConfig = mailConfig.Value;
        FromMailAddress = new(_mailConfig.AppMailAddressFrom);

        NetworkCredential = new(_mailConfig.AppMailAddressFrom, _mailConfig.Password);
        Host = _mailConfig.Host;
        Port = _mailConfig.Port;
    }

    public string? Body { get; set; }
    public string? Subject { get; set; }
    public string? FromName { get; }
    public string? ToName { get; }
    public string? AppPackageName { get; set; }
    public NetworkCredential NetworkCredential { get; }
    public MailAddress FromMailAddress { get; }
    private string Host { get; }
    private int Port { get; }


    public async Task sendEmail(string ToMailAddress)
    {
        try
        {
            GuardValidEmail(ToMailAddress);
            GuardValidAppPackageName(AppPackageName);
            MailAddress mailAddressTo = new(ToMailAddress);
            var smtp = new SmtpClient
            {
                Host = Host,
                Port = Port,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = NetworkCredential
            };
            using var message = new MailMessage(FromMailAddress, mailAddressTo)
            {
                Subject = Subject,
                Body = Body
            };
            await smtp.SendMailAsync(message);
        }
        catch(Exception ex)
        {
            throw;
        }
        
    }
    private static void GuardValidEmail(string? email)
    {
        return;
        ArgumentNullException.ThrowIfNull(email);

        string pattern = @"^(?!\.)(""([^""\r\\]|\\[""\r\\])*""|" + @"([-a-z0-9!#$%&'*+/=?^_`{|}~]|(?<!\.)\.)*)(?<!\.)" + @"@[a-z0-9][\w\.-]*[a-z0-9]\.[a-z][a-z\.]*[a-z]$";
        var regex = new Regex(pattern, RegexOptions.IgnoreCase);
        if (regex.IsMatch(email))
        {
            throw new ArgumentException("Provided email is not valid.");
        }
    }

    private static void GuardValidAppPackageName(string? appPackageName)
    {
        ArgumentNullException.ThrowIfNull(appPackageName);

        var validAppPackageNames = new string[] { "com.example.app_for_family_backup", "" };

        if (!validAppPackageNames.Contains(appPackageName))
        {
            throw new ArgumentException($"Not a valid nameof{appPackageName}");
        }
    }
}