.class public Lcom/boohee/model/MealBean;
.super Ljava/lang/Object;
.source "MealBean.java"


# instance fields
.field private img_url:Ljava/lang/String;

.field private meal_type:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private post_id:I

.field private user_id:I

.field private user_img:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImg_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/model/MealBean;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMeal_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/model/MealBean;->meal_type:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/model/MealBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPost_id()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/boohee/model/MealBean;->post_id:I

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/boohee/model/MealBean;->user_id:I

    return v0
.end method

.method public getUser_img()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boohee/model/MealBean;->user_img:Ljava/lang/String;

    return-object v0
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_url"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/model/MealBean;->img_url:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMeal_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "meal_type"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/boohee/model/MealBean;->meal_type:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/boohee/model/MealBean;->nickname:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPost_id(I)V
    .locals 0
    .param p1, "post_id"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/boohee/model/MealBean;->post_id:I

    .line 22
    return-void
.end method

.method public setUser_id(I)V
    .locals 0
    .param p1, "user_id"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/boohee/model/MealBean;->user_id:I

    .line 30
    return-void
.end method

.method public setUser_img(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_img"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/model/MealBean;->user_img:Ljava/lang/String;

    .line 62
    return-void
.end method
