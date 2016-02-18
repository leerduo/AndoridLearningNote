.class public Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/boohee/one/onekey/model/City;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/boohee/one/onekey/model/City;Lcom/boohee/one/onekey/model/City;)I
    .locals 3
    .param p1, "c1"    # Lcom/boohee/one/onekey/model/City;
    .param p2, "c2"    # Lcom/boohee/one/onekey/model/City;

    .prologue
    const/4 v0, -0x1

    .line 15
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    iget-object v1, p1, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    iget-object v0, p1, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p1, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    iget-object v1, p2, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/boohee/one/onekey/model/City;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/boohee/one/onekey/model/City;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;->compare(Lcom/boohee/one/onekey/model/City;Lcom/boohee/one/onekey/model/City;)I

    move-result v0

    return v0
.end method
