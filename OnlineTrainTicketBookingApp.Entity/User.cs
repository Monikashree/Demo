using System;

namespace OnlineTrainTicketBooking
{
    public class User
    {
        public string firstName { get; set; }       //Properties of user
        public string lastName { get; set; }
        public short age { get; set; }
        public string sex { get; set; }
        public string email { get; set; }
        public long mobileNum { get; set; }
        public string password { get; set; }
        public string confirmPassword { get; set; }
        public string role { get; set; }
        
        public User(string firstName, string lastName, short age, string sex, string email, long mobileNum, string password, string role)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.age = age;
            this.sex = sex;
            this.email = email;
            this.mobileNum = mobileNum;
            this.password = password;
            this.confirmPassword = confirmPassword;
            this.role = role;
            
        }
        public override string ToString()       //Overriding to string method for reusability
        {
            return firstName + " " + lastName + " " + age + " " + sex + " " + email + " " + mobileNum + " " + password + " " + role;
        }
    }
}
