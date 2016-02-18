.class public Lcom/boohee/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field public cellphone:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "user_name"    # Ljava/lang/String;
    .param p3, "cellphone"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/boohee/model/Contact;->section:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/boohee/model/Contact;->user_name:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/boohee/model/Contact;->cellphone:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/boohee/model/Contact;->email:Ljava/lang/String;

    .line 25
    return-void
.end method
