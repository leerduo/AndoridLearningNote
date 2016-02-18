.class public Lcom/boohee/model/Address;
.super Lcom/boohee/model/ModelBase;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x20d1cf2cf71bd1fbL


# instance fields
.field public cellphone:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public district:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public province:Ljava/lang/String;

.field public real_name:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/model/Address;->isDefault:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "real_name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "cellphone"    # Ljava/lang/String;
    .param p4, "address_province"    # Ljava/lang/String;
    .param p5, "address_city"    # Ljava/lang/String;
    .param p6, "address_district"    # Ljava/lang/String;
    .param p7, "address_street"    # Ljava/lang/String;
    .param p8, "address_zipcode"    # Ljava/lang/String;
    .param p9, "isDefault"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/model/Address;->isDefault:Z

    .line 31
    iput-object p1, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    .line 39
    iput-boolean p9, p0, Lcom/boohee/model/Address;->isDefault:Z

    .line 40
    return-void
.end method

.method public static parseAddress(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "res"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    new-instance v4, Lcom/boohee/model/Address$1;

    invoke-direct {v4}, Lcom/boohee/model/Address$1;-><init>()V

    invoke-virtual {v4}, Lcom/boohee/model/Address$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 60
    .local v3, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v4, "addresses"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :goto_1
    return-object v0

    .line 61
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v4, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 65
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parseAddressFromJson(Lorg/json/JSONObject;)Lcom/boohee/model/Address;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "address":Lcom/boohee/model/Address;
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    .local v3, "gson":Lcom/google/gson/Gson;
    instance-of v4, p0, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    const-class v5, Lcom/boohee/model/Address;

    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_1

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_1
    move-object v0, v4

    check-cast v0, Lcom/boohee/model/Address;

    move-object v1, v0

    .line 53
    :goto_2
    return-object v1

    .line 49
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address [real_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellphone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", street="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zipcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/boohee/model/Address;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boohee/model/Address;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
