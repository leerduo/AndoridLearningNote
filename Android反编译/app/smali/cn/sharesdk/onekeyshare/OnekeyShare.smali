.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "OnekeyShare.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcn/sharesdk/framework/PlatformActionListener;

.field private context:Landroid/content/Context;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field private dialogMode:Z

.field private disableSSO:Z

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field private shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z

.field private theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    .line 64
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    return-void
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .locals 1
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    .line 280
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 505
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 589
    :cond_0
    :goto_0
    return v6

    .line 507
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 512
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_completed"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 516
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 517
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    .end local v2    # "resId":I
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "expName":Ljava/lang/String;
    const-string v4, "WechatClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WechatTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WechatFavoriteNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "wechat_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 528
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 529
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .end local v2    # "resId":I
    :cond_2
    const-string v4, "GooglePlusClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 532
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "google_plus_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 533
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 534
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    .end local v2    # "resId":I
    :cond_3
    const-string v4, "QQClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "qq_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 538
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 539
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .end local v2    # "resId":I
    :cond_4
    const-string v4, "YixinClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "YixinTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 543
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "yixin_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 544
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 545
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    .end local v2    # "resId":I
    :cond_6
    const-string v4, "KakaoTalkClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 548
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaotalk_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 549
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 550
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    .end local v2    # "resId":I
    :cond_7
    const-string v4, "KakaoStoryClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 553
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaostory_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 554
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 555
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .end local v2    # "resId":I
    :cond_8
    const-string v4, "WhatsAppClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 558
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "whatsapp_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 559
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 560
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    .end local v2    # "resId":I
    :cond_9
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_failed"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 564
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 565
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    .end local v0    # "expName":Ljava/lang/String;
    .end local v2    # "resId":I
    :pswitch_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_canceled"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 573
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 574
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .end local v2    # "resId":I
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    .line 583
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 584
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 496
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 497
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 498
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 499
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 500
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 502
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 474
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 475
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 476
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 477
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 479
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 482
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 485
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 487
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 488
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 492
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 493
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 249
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 250
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "enableLogo"    # Landroid/graphics/Bitmap;
    .param p2, "disableLogo"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "ocListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 269
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 270
    .local v0, "cl":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 271
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 272
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 273
    iput-object p4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 274
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public setDialogMode()V
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 285
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 309
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    .line 310
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "executeurl"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "imageArray"    # [Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "installurl"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setLatitude(F)V
    .locals 3
    .param p1, "latitude"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public setLongitude(F)V
    .locals 3
    .param p1, "longitude"    # F

    .prologue
    .line 219
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0
    .param p1, "onShareButtonClickListener"    # Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 314
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 2
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 259
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 260
    return-void
.end method

.method public setShareFromQQAuthSupport(Z)V
    .locals 3
    .param p1, "shareFromQQLogin"    # Z

    .prologue
    .line 600
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    return-void
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "silent"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    .line 225
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 2
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "siteUrl"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .locals 0
    .param p1, "theme"    # Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .line 135
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleUrl"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueDescription"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueName"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .locals 4
    .param p1, "viewToShare"    # Landroid/view/View;

    .prologue
    .line 296
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Ljava/util/HashMap;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v21, 0x0

    .line 319
    .local v21, "started":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 320
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/sharesdk/framework/Platform;

    .line 321
    .local v17, "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 322
    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "name":Ljava/lang/String;
    const-string v23, "KakaoTalk"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 325
    .local v8, "isKakaoTalk":Z
    if-eqz v8, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_0

    .line 326
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 327
    .local v15, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "kakaotalk_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 329
    .local v18, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 334
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_0
    const-string v23, "KakaoStory"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 335
    .local v7, "isKakaoStory":Z
    if-eqz v7, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_1

    .line 336
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 337
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "kakaostory_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 339
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 344
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_1
    const-string v23, "Line"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 345
    .local v11, "isLine":Z
    if-eqz v11, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_2

    .line 346
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 347
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "line_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 349
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 354
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_2
    const-string v23, "WhatsApp"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 355
    .local v13, "isWhatsApp":Z
    if-eqz v13, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_3

    .line 356
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 357
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "whatsapp_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 359
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 364
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_3
    const-string v23, "Pinterest"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 365
    .local v12, "isPinterest":Z
    if-eqz v12, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_4

    .line 366
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 367
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "pinterest_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 369
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 374
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_4
    const-string v23, "Instagram"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_5

    .line 375
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 376
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "instagram_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 378
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 383
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_5
    const-string v23, "Laiwang"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 384
    .local v9, "isLaiwang":Z
    const-string v23, "LaiwangMoments"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 385
    .local v10, "isLaiwangMoments":Z
    if-nez v9, :cond_6

    if-eqz v10, :cond_7

    .line 386
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_7

    .line 387
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 388
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "laiwang_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 390
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 396
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_7
    const-string v23, "YixinMoments"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, "Yixin"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_8
    const/4 v14, 0x1

    .line 397
    .local v14, "isYixin":Z
    :goto_1
    if-eqz v14, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_a

    .line 398
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 399
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "yixin_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 401
    .restart local v18    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 396
    .end local v14    # "isYixin":Z
    .end local v15    # "msg":Landroid/os/Message;
    .end local v18    # "resId":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 406
    .restart local v14    # "isYixin":Z
    :cond_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 407
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v20, 0x1

    .line 408
    .local v20, "shareType":I
    const-string v23, "imagePath"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "imagePath":Ljava/lang/String;
    if-eqz v5, :cond_f

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 410
    const/16 v20, 0x2

    .line 411
    const-string v23, ".gif"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 412
    const/16 v20, 0x9

    .line 446
    :cond_b
    :goto_2
    const-string v23, "QZone"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_c

    const-string v23, "imageUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 447
    const/16 v20, 0x4

    .line 448
    const-string v23, "siteUrl"

    const-string v24, "http://www.boohee.com"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v23, "url"

    const-string v24, "http://www.boohee.com"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v23, "titleUrl"

    const-string v24, "http://www.boohee.com"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_c
    const-string v23, "shareType"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    if-nez v21, :cond_d

    .line 456
    const/16 v21, 0x1

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "sharing"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 459
    .restart local v18    # "resId":I
    if-lez v18, :cond_d

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    .line 464
    .end local v18    # "resId":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 465
    new-instance v19, Lcn/sharesdk/onekeyshare/ShareCore;

    invoke-direct/range {v19 .. v19}, Lcn/sharesdk/onekeyshare/ShareCore;-><init>()V

    .line 466
    .local v19, "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/ShareCore;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 467
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/ShareCore;->share(Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)Z

    goto/16 :goto_0

    .line 413
    .end local v19    # "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    :cond_e
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 414
    const/16 v20, 0x4

    .line 415
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 416
    const/16 v20, 0x5

    goto/16 :goto_2

    .line 420
    :cond_f
    const-string v23, "viewToShare"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    .line 421
    .local v22, "viewToShare":Landroid/graphics/Bitmap;
    if-eqz v22, :cond_10

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_10

    .line 422
    const/16 v20, 0x2

    .line 423
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 424
    const/16 v20, 0x4

    .line 425
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 426
    const/16 v20, 0x5

    goto/16 :goto_2

    .line 430
    :cond_10
    const-string v23, "imageUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 431
    .local v6, "imageUrl":Ljava/lang/Object;
    if-eqz v6, :cond_b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 432
    const/16 v20, 0x2

    .line 433
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const-string v24, ".gif"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 434
    const/16 v20, 0x9

    goto/16 :goto_2

    .line 435
    :cond_11
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 436
    const/16 v20, 0x4

    .line 437
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 438
    const/16 v20, 0x5

    goto/16 :goto_2

    .line 469
    .end local v2    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v6    # "imageUrl":Ljava/lang/Object;
    .end local v7    # "isKakaoStory":Z
    .end local v8    # "isKakaoTalk":Z
    .end local v9    # "isLaiwang":Z
    .end local v10    # "isLaiwangMoments":Z
    .end local v11    # "isLine":Z
    .end local v12    # "isPinterest":Z
    .end local v13    # "isWhatsApp":Z
    .end local v14    # "isYixin":Z
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v20    # "shareType":I
    .end local v22    # "viewToShare":Landroid/graphics/Bitmap;
    :cond_12
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 70
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    .line 73
    const/4 v5, 0x1

    invoke-static {v5, v7}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 82
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 86
    .local v2, "platform":Lcn/sharesdk/framework/Platform;
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    if-nez v5, :cond_0

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v2, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v5, :cond_1

    .line 90
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v4, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 131
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v4    # "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_0
    sget-object v5, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    if-ne v5, v6, :cond_2

    .line 101
    const-string v5, "cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v3, "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :goto_1
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setDialogMode(Z)V

    .line 111
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 112
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setSilent(Z)V

    .line 113
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 114
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 115
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 116
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V

    .line 117
    new-instance v5, Lcn/sharesdk/onekeyshare/OnekeyShare$1;

    invoke-direct {v5, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V

    .line 124
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 127
    .restart local v2    # "platform":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3, p1, v2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 103
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_2
    :try_start_1
    const-string v5, "cn.sharesdk.onekeyshare.theme.classic.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    goto :goto_1

    .line 105
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_3
    invoke-virtual {v3, p1, v7}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
