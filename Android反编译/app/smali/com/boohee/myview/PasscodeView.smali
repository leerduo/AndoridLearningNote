.class public Lcom/boohee/myview/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;

.field private listener:Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;

.field private password1:Landroid/widget/EditText;

.field private password2:Landroid/widget/EditText;

.field private password3:Landroid/widget/EditText;

.field private password4:Landroid/widget/EditText;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/boohee/myview/PasscodeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/myview/PasscodeView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/boohee/myview/PasscodeView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/boohee/myview/PasscodeView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/boohee/myview/PasscodeView;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/myview/PasscodeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/PasscodeView;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/boohee/myview/PasscodeView;->setFocusable(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/myview/PasscodeView;)Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/PasscodeView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->listener:Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->titleText:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0e0528

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f0e0529

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0e052a

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0e052b

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/boohee/myview/PasscodeView;->setFocusable(I)V

    .line 58
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 59
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 60
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 61
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 63
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/PasscodeView;->setTextChangeListener(Landroid/widget/EditText;I)V

    .line 64
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/PasscodeView;->setTextChangeListener(Landroid/widget/EditText;I)V

    .line 65
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/PasscodeView;->setTextChangeListener(Landroid/widget/EditText;I)V

    .line 66
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/boohee/myview/PasscodeView;->setTextChangeListener(Landroid/widget/EditText;I)V

    .line 67
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/boohee/myview/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/PasscodeView;->ctx:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/myview/PasscodeView;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 47
    invoke-direct {p0}, Lcom/boohee/myview/PasscodeView;->findView()V

    .line 48
    return-void
.end method

.method private setFocusable(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 71
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 72
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 73
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 78
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 82
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 86
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTextChangeListener(Landroid/widget/EditText;I)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "index"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/boohee/myview/PasscodeView$1;

    invoke-direct {v0, p0, p2}, Lcom/boohee/myview/PasscodeView$1;-><init>(Lcom/boohee/myview/PasscodeView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    return-void
.end method


# virtual methods
.method public emptyInput()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/boohee/myview/PasscodeView;->setFocusable(I)V

    .line 101
    return-void
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/myview/PasscodeView;->password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/myview/PasscodeView;->password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/myview/PasscodeView;->password3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/myview/PasscodeView;->password4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOnPasswordCompleteListener(Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/boohee/myview/PasscodeView;->listener:Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;

    .line 141
    return-void
.end method

.method public setPasscodeTitle(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/boohee/myview/PasscodeView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    return-void
.end method
