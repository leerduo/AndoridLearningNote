.class public abstract Lcom/boohee/one/ui/BaseChallengeActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "BaseChallengeActivity.java"

# interfaces
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final CHALLENGE_ID:Ljava/lang/String; = "CHALLENGE_ID"

.field public static final CHALLENGE_MODEL:Ljava/lang/String; = "CHALLENGE_MODEL"

.field private static final DEFAULT_DAMPING:F = 1.5f

.field private static final DEFAULT_DURATION:J = 0x12cL


# instance fields
.field protected adapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e000a
    .end annotation
.end field

.field bottomTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00de
    .end annotation
.end field

.field protected challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field changeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field private currentFragment:Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field handler:Landroid/os/Handler;

.field header:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00dc
    .end annotation
.end field

.field headerChallenge:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00dd
    .end annotation
.end field

.field imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field ivChallengeInfo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bd
    .end annotation
.end field

.field ivChallengeThumb:Lcom/boohee/widgets/CircularImage;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ba
    .end annotation
.end field

.field private mHeaderHeight:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPosition:I

.field private mTabHeight:I

.field private mTouchSlop:I

.field private mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

.field tabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ca
    .end annotation
.end field

.field touchCallbackLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00db
    .end annotation
.end field

.field tvChallengeName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bb
    .end annotation
.end field

.field tvChallengeTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bc
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 103
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/BaseChallengeActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BaseChallengeActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/BaseChallengeActivity;Lcom/boohee/one/ui/fragment/BaseChallegeFragment;)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BaseChallengeActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->currentFragment:Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/BaseChallengeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BaseChallengeActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->refreshPagerBottomMargin()V

    return-void
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/BaseChallengeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BaseChallengeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mPosition:I

    return p1
.end method

.method private clearBottomText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 271
    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "challenge"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v0, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    const-string v1, "joined"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    .line 170
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->initView()V

    .line 171
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->challengeUpdateComplete(Lcom/boohee/model/chanllenge/BaseChallenge;)V

    goto :goto_0
.end method

.method private headerExpand(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 415
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->header:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 421
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 426
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 427
    return-void
.end method

.method private headerFold(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 402
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->header:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 408
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 411
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 412
    return-void
.end method

.method private headerMoveDuration(ZFZF)J
    .locals 7
    .param p1, "isExpand"    # Z
    .param p2, "currentHeaderY"    # F
    .param p3, "isFling"    # Z
    .param p4, "velocityY"    # F

    .prologue
    const-wide/16 v4, 0x12c

    .line 384
    const-wide/16 v0, 0x12c

    .line 386
    .local v0, "defaultDuration":J
    if-eqz p3, :cond_0

    .line 388
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v2, v3, v6

    .line 390
    .local v2, "distance":F
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float p4, v3, v6

    .line 392
    div-float v3, v2, p4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v6

    float-to-long v0, v3

    .line 394
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    move-wide v0, v4

    .line 398
    .end local v2    # "distance":F
    :cond_0
    return-wide v0

    .line 388
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->showLoading()V

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/BaseChallengeActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/BaseChallengeActivity$1;-><init>(Lcom/boohee/one/ui/BaseChallengeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->getChallengeHome(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 162
    return-void
.end method

.method private refreshPagerBottomMargin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static startChallenge(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chanllenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CHALLENGE_MODEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    iget-object v1, p1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v2, "clock_out"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-class v1, Lcom/boohee/one/ui/PunchChallengeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v2, "walking"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-class v1, Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 118
    :cond_3
    iget-object v1, p1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v2, "wager"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const-class v1, Lcom/boohee/one/ui/WagerChallengeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 121
    :cond_4
    iget-object v1, p1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v2, "flex"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    const-class v1, Lcom/boohee/one/ui/FlexChallengeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 126
    :cond_5
    const-class v1, Lcom/boohee/one/ui/UnKownChallengeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected challengeUpdateComplete(Lcom/boohee/model/chanllenge/BaseChallenge;)V
    .locals 0
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 307
    return-void
.end method

.method public getChallenge()Lcom/boohee/model/chanllenge/BaseChallenge;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    return-object v0
.end method

.method public getCurrentFragment()Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->currentFragment:Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    return-object v0
.end method

.method protected abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected initHeaderView()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tvChallengeName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tvChallengeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->avatar_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setHeaderThumb(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/boohee/one/ui/BaseChallengeActivity$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/BaseChallengeActivity$3;-><init>(Lcom/boohee/one/ui/BaseChallengeActivity;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setHeaderClick(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 4

    .prologue
    .line 176
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mTouchSlop:I

    .line 177
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mTabHeight:I

    .line 178
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    .line 179
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-direct {v0, p0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;-><init>(Landroid/content/Context;Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;)V

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->touchCallbackLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;

    invoke-virtual {v0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->setTouchEventListener(Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->initViewPager()V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/BaseChallengeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BaseChallengeActivity$2;-><init>(Lcom/boohee/one/ui/BaseChallengeActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextGone()V

    .line 196
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->initHeaderView()V

    .line 197
    return-void
.end method

.method protected initViewPager()V
    .locals 4

    .prologue
    .line 224
    new-instance v0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/res/Resources;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 225
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 226
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 227
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 228
    new-instance v0, Lcom/boohee/one/ui/BaseChallengeActivity$4;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/BaseChallengeActivity$4;-><init>(Lcom/boohee/one/ui/BaseChallengeActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->changeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 245
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->changeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 247
    return-void
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    invoke-virtual {v0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->isViewBeingDragged(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setContentView(I)V

    .line 135
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 136
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->handler:Landroid/os/Handler;

    .line 138
    const v0, 0x7f070144

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setTitle(I)V

    .line 139
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CHALLENGE_MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->initData()V

    .line 143
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f040025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->fadeIn:Landroid/view/animation/Animation;

    .line 144
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f040027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->fadeOut:Landroid/view/animation/Animation;

    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 432
    return-void
.end method

.method public onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mTabHeight:I

    iget v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMove(FF)V
    .locals 6
    .param p1, "y"    # F
    .param p2, "yDx"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 340
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->header:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float v0, v1, p2

    .line 341
    .local v0, "headerTranslationY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 342
    invoke-direct {p0, v4, v5}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerExpand(J)V

    .line 355
    :goto_0
    return-void

    .line 343
    :cond_0
    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 344
    invoke-direct {p0, v4, v5}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerFold(J)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->header:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 350
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onMoveEnded(ZF)V
    .locals 5
    .param p1, "isFling"    # Z
    .param p2, "flingVelocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->header:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 361
    .local v0, "headerY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 367
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerExpand(J)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 371
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerFold(J)V

    goto :goto_0

    .line 373
    :cond_3
    iget v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 374
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerExpand(J)V

    goto :goto_0

    .line 376
    :cond_4
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/BaseChallengeActivity;->headerFold(J)V

    goto :goto_0
.end method

.method public onMoveStarted(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 336
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 260
    return-void
.end method

.method public setBottomTextClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method public setBottomTextGone()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setVisibility(I)V

    .line 275
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->refreshPagerBottomMargin()V

    .line 276
    return-void
.end method

.method public setBottomTextView(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->clearBottomText()V

    .line 264
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->refreshPagerBottomMargin()V

    .line 267
    return-void
.end method

.method public setBottomTextWithDrawable(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->clearBottomText()V

    .line 280
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomRipple:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 283
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->bottomTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ctx:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 284
    return-void
.end method

.method public setHeaderClick(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setHeaderInfoVisible(I)V

    .line 312
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ctx:Landroid/content/Context;

    const-string v1, "challenge_viewDetails"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ivChallengeInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method public setHeaderInfoVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ivChallengeInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    return-void
.end method

.method public setHeaderThumb(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->ivChallengeThumb:Lcom/boohee/widgets/CircularImage;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 292
    return-void
.end method

.method public setTvChallengeName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tvChallengeName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public setTvChallengeTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity;->tvChallengeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method
