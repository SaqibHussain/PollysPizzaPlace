<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Leave A Message.aspx.cs" Inherits="Contact_Us_Leave_A_Message" Title="Leave A Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%@ import namespace="System.Xml" %>

    <script runat="server">
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string xmlPath = MapPath("~/Hidden/comments.xml");
            XmlDocument doc = new XmlDocument();
            //Check if the file already exists or not
            if (System.IO.File.Exists(xmlPath))
            {
                doc.Load(xmlPath);
                XmlNode commentNode = CreatecommentNode(doc);
                //Get reference to the book node and append the book node to it
                XmlNode commentsNode = doc.SelectSingleNode("comments");
                commentsNode.AppendChild(commentNode);
                lblResult.Text = "Your message has been sucessfully passed to the site administrators!";
                lblResult.Visible = true;
            }
            else
            {
                XmlNode declarationNode = doc.CreateXmlDeclaration("1.0", "", "");
                doc.AppendChild(declarationNode);
                XmlNode comment = doc.CreateComment("These are comments left by customers");
                doc.AppendChild(comment);
                XmlNode commentsNode = doc.CreateElement("comments");
                XmlNode commentNode = CreatecommentNode(doc);
                //Append the book node to the bookstore node            
                commentsNode.AppendChild(commentNode);
                //Append the bookstore node to the document
                doc.AppendChild(commentsNode);
                lblResult.Text = "Your message has been sucessfully passed to the site administrators!";
                lblResult.Visible = true;
            }
            doc.Save(xmlPath);
        }

        XmlNode CreatecommentNode(XmlDocument doc)
        {
            XmlNode commentNode = doc.CreateElement("Comment");
            //Add the genre attribute to the book node
            XmlNode firstNameNode = doc.CreateElement("First_Name");
            firstNameNode.InnerText = txtFirstName.Text;
            commentNode.AppendChild(firstNameNode);
            XmlNode lastNameNode = doc.CreateElement("Last_Name");
            lastNameNode.InnerText = txtLastName.Text;
            commentNode.AppendChild(lastNameNode);
            XmlNode emailNode = doc.CreateElement("Email");
            emailNode.InnerText = txtEmail.Text;
            commentNode.AppendChild(emailNode);
            XmlNode subjectNode = doc.CreateElement("Subject");
            subjectNode.InnerText = txtSubject.Text;
            commentNode.AppendChild(subjectNode);
            XmlNode MessageNode = doc.CreateElement("Message");
            MessageNode.InnerText = txtMessage.Text;
            commentNode.AppendChild(MessageNode);
            return commentNode;
        }
    
    </script>

    <div class="content_block">
        <table id="lmt">
            <tr>
                <td id="lmtd1">
                    First Name:
                </td>
                <td id="lmtd2">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lmtd1">
                    Last Name:
                </td>
                <td id="lmtd2">
                    <asp:TextBox ID="txtLastName" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lmtd1">
                    E-Mail:
                </td>
                <td id="lmtd2">
                    <asp:TextBox ID="txtEmail" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lmtd1">
                    Subject:
                </td>
                <td id="lmtd2">
                    <asp:TextBox ID="txtSubject" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lmtd1">
                    Message
                </td>
                <td id="lmtd2">
                    <asp:TextBox ID="txtMessage" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="lmtd2" colspan="2">
                    <asp:Button Text="Sumbit" runat="server" ID="btnSave" Width="95px" OnClick="btnSave_Click" />
                </td>
            </tr>
            <tr>
                <td id="lmtd2" colspan="2">
                    <asp:Label Text="Submit" runat="server" ID="lblResult" Width="295px" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>