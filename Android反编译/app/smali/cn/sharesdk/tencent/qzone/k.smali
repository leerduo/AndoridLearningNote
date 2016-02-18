.class Lcn/sharesdk/tencent/qzone/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/j;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/j;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/k;->a:Lcn/sharesdk/tencent/qzone/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/k;->a:Lcn/sharesdk/tencent/qzone/j;

    iget-object v0, v0, Lcn/sharesdk/tencent/qzone/j;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/i;->finish()V

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/k;->a:Lcn/sharesdk/tencent/qzone/j;

    iget-object v0, v0, Lcn/sharesdk/tencent/qzone/j;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/i;->a(Lcn/sharesdk/tencent/qzone/i;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_0
.end method
