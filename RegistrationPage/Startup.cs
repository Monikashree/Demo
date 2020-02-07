using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RegistrationPage.Startup))]
namespace RegistrationPage
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
