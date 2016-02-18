.class public Lcom/boohee/api/PassportApi;
.super Ljava/lang/Object;
.source "PassportApi.java"


# static fields
.field public static final AUTHENTICATE_GUEST:Ljava/lang/String; = "/api/v1/user_connections/authenticate_guest.json"

.field public static final AUTHENTICATE_SNS:Ljava/lang/String; = "/api/v1/user_connections/authenticate_sns.json"

.field public static final CHANGE_PASSWORD:Ljava/lang/String; = "/api/v1/users/change_password"

.field public static final CREATE_REFERRER:Ljava/lang/String; = "/api/v1/recommendships/create_referrer"

.field public static final DEL_USER_CONNECTIONS:Ljava/lang/String; = "/api/v1/user_connections/%1d.json"

.field public static final FINISH_RESET_PASSWORD:Ljava/lang/String; = "/api/v1/users/finish_reset_password"

.field public static final FORGET_PASSWORD_BY_EMAIL:Ljava/lang/String; = "/api/v1/users/reset_password_by_email"

.field public static final FORGET_PASSWORD_BY_PHONE:Ljava/lang/String; = "/api/v1/users/reset_password"

.field public static final GET_USER_CONNECTIONS:Ljava/lang/String; = "/api/v1/user_connections.json"

.field public static final LOGIN:Ljava/lang/String; = "/api/v1/users/login"

.field public static final REGISTER:Ljava/lang/String; = "/api/v1/register/create_user"

.field public static final REGISTER_CELLPHONE_VERIFICATION:Ljava/lang/String; = "/api/v1/register/send_cellphone_verification"

.field public static final REGISTER_CELLPHONE_VERIFICATION_CHECK:Ljava/lang/String; = "/api/v1/register/verify_cellphone"

.field public static final SEND_CELLPHONE_VERIFICATION:Ljava/lang/String; = "/api/v1/users/send_cellphone_verification"

.field public static final SET_PASSWORD:Ljava/lang/String; = "/api/v1/users/set_password"

.field public static final UPGRADE_TO_BOOHEE:Ljava/lang/String; = "/api/v1/users/upgrade_to_boohee"

.field public static final VERIFY_CELLPHONE:Ljava/lang/String; = "/api/v1/users/verify_cellphone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticateGuest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 203
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 204
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "provider"

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "identity"

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/AccountUtils;->getIdentity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "/api/v1/user_connections/authenticate_guest.json"

    const-string v2, "user_connection"

    invoke-virtual {v0, v2}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v2

    invoke-static {v1, v2, p0, p1}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 207
    return-void
.end method

.method public static changePassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "oldPassword"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 64
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 65
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "old_password"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "new_password"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "/api/v1/users/change_password"

    invoke-static {v1, v0, p2, p3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 68
    return-void
.end method

.method public static checkCellphoneCaptcha(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cellPhone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 223
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 224
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "/api/v1/register/verify_cellphone"

    invoke-static {v1, v0, p0, p4}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 228
    return-void
.end method

.method public static createReferrer(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "referrer_cellphone"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 134
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 135
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "referrer_cellphone"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "/api/v1/recommendships/create_referrer"

    invoke-static {v1, v0, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 137
    return-void
.end method

.method public static deleteUserConnection(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "conId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 53
    const-string v0, "/api/v1/user_connections/%1d.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 54
    return-void
.end method

.method public static finishResetPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 171
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 172
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "password"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "/api/v1/users/finish_reset_password"

    invoke-static {v1, v0, p2, p3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 175
    return-void
.end method

.method public static forgetPasswordByEmail(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 146
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 147
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "/api/v1/users/reset_password_by_email"

    invoke-static {v1, v0, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 149
    return-void
.end method

.method public static forgetPasswordByPhone(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "cellphone"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 158
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 159
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "/api/v1/users/reset_password"

    invoke-static {v1, v0, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 161
    return-void
.end method

.method public static getCellphoneCaptcha(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cellPhone"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 213
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 214
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "method"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "/api/v1/register/send_cellphone_verification"

    invoke-static {v1, v0, p0, p3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 217
    return-void
.end method

.method public static getUserConnections(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 43
    const-string v0, "/api/v1/user_connections.json"

    invoke-static {v0, p0, p1}, Lcom/boohee/one/http/client/PassportClient;->get(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 44
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 121
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 122
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "login"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "/api/v1/users/login"

    invoke-static {v1, v0, p2, p3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 125
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "cellphone"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 234
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 235
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_name"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "token"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "/api/v1/register/create_user"

    invoke-static {v1, v0, p0, p5}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 240
    return-void
.end method

.method public static sendCellphoneVerification(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "cellphone"    # Ljava/lang/String;
    .param p1, "force"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 106
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-ne p1, v2, :cond_0

    .line 108
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 110
    :cond_0
    const-string v1, "/api/v1/users/send_cellphone_verification"

    invoke-static {v1, v0, p2, p3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 111
    return-void
.end method

.method public static setPassword(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 77
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 78
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "password"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "/api/v1/users/set_password"

    invoke-static {v1, v0, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 80
    return-void
.end method

.method public static upgradeToBoohee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "user_name"    # Ljava/lang/String;
    .param p1, "phoneEmail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 186
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 187
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_name"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/boohee/utils/TextUtil;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "/api/v1/users/upgrade_to_boohee"

    invoke-static {v1, v0, p3, p4}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 195
    return-void

    .line 191
    :cond_0
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyCellphone(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "cellphone"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "force"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 91
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 92
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "cellphone"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 94
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "/api/v1/users/verify_cellphone"

    invoke-static {v1, v0, p3, p4}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 96
    return-void
.end method
