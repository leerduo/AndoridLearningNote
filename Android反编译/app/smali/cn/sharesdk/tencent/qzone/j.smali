.class Lcn/sharesdk/tencent/qzone/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/i;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/j;->a:Lcn/sharesdk/tencent/qzone/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcn/sharesdk/tencent/qzone/k;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/k;-><init>(Lcn/sharesdk/tencent/qzone/j;)V

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/k;->start()V

    return-void
.end method
