using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Speakcore.Logic.Services
{
    public static class EmailService
    {
        public static void SendConfirmationEmail(string recipientEmail, string name)
        {

            SmtpClient smtpClient = new SmtpClient()
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential()
                {
                    UserName = "dlspeakcorechallenge@gmail.com",
                    Password = "a3LRYwuFCerSBJK"
                }
            };

            MailAddress sender = new MailAddress("DLSpeakcoreChallengeEmailThrowaway@gmail.com", "DL Speakcore Challenge");
            MailAddress recipient = new MailAddress(recipientEmail);

            string message = $"Dear {name},{Environment.NewLine}{Environment.NewLine}On behalf of Pharma Company, Inc. thank you for registering for the Speaker Training Meeting.{Environment.NewLine}{Environment.NewLine}You will receive a formal confirmation email within the next 3-5 business days, including information for your booking travel.{Environment.NewLine}{Environment.NewLine}Regards,";

            MailMessage mailMessage = new MailMessage()
            {
                From = sender,
                Subject = "CONFIRMATION - Speaker Training Meeting",
                Body = message,
                IsBodyHtml = false, //update `message` with HTML
            };

            mailMessage.To.Add(recipient);

            try
            {
                smtpClient.Send(mailMessage);
            }
            catch
            {
                //log email failure
            }
        }
    }
}
