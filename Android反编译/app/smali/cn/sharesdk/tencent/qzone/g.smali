.class Lcn/sharesdk/tencent/qzone/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/g;->b:Lcn/sharesdk/tencent/qzone/f;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/g;->b:Lcn/sharesdk/tencent/qzone/f;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qzone/f;->a(Lcn/sharesdk/tencent/qzone/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method
