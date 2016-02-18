.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;
.super Ljava/lang/Thread;
.source "EditPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 124
    :try_start_0
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 125
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v8

    if-nez v8, :cond_0

    .line 152
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .local v0, "arr$":[Lcn/sharesdk/framework/Platform;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 131
    .local v6, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "name":Ljava/lang/String;
    instance-of v8, v6, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v8, :cond_1

    invoke-static {v5}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 130
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    .end local v0    # "arr$":[Lcn/sharesdk/framework/Platform;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "plat":Lcn/sharesdk/framework/Platform;
    :catch_0
    move-exception v7

    .line 150
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "arr$":[Lcn/sharesdk/framework/Platform;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcn/sharesdk/framework/Platform;

    invoke-static {v8, v9}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_4

    .line 140
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v9

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/sharesdk/framework/Platform;

    aput-object v8, v9, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 143
    :cond_4
    const/4 v8, 0x1

    new-instance v9, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;

    invoke-direct {v9, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;)V

    invoke-static {v8, v9}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
