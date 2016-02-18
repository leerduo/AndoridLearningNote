.class public Lcom/boohee/one/ui/fragment/PreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAboutBooheePreference:Landroid/preference/Preference;

.field private mIsReceivePushPreference:Landroid/preference/CheckBoxPreference;

.field private mPrivacyPreference:Landroid/preference/CheckBoxPreference;

.field private mScorePreference:Landroid/preference/Preference;

.field private mSharePreference:Landroid/preference/Preference;

.field private mTermsPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private scoreUs()V
    .locals 5

    .prologue
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v1, "goToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/boohee/api/OneApi;->getUserBehaviorAppraise(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0703d2

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0
.end method

.method private share()V
    .locals 5

    .prologue
    .line 103
    const-string v3, "\u6700\u6709\u6548\u7684\u51cf\u80a5APP"

    .line 104
    .local v3, "title":Ljava/lang/String;
    const-string v1, "\u63a8\u8350\u201c\u8584\u8377\u201dapp\u7ed9\u5927\u5bb6\u54e6\uff0c\u7b80\u76f4\u4e13\u4e1a\u5230\u4ee4\u4eba\u611f\u52a8\uff01\u5b83\u4f1a\u6839\u636e\u4f60\u7684\u8eab\u9ad8\u4f53\u91cd\u5efa\u8bae\u4f60\u4e00\u5929\u8be5\u6444\u53d6\u7684\u5361\u8def\u91cc\u662f\u591a\u5c11\uff0c\u8fd8\u6709\u5f88\u5168\u7684\u98df\u7269\u5361\u8def\u91cc\u6570\u636e\uff0c\u77e5\u9053\u98df\u7269\u70ed\u91cf\u5c31\u4e0d\u62c5\u5fc3\u5403\u9519\u4e1c\u897f\u957f\u8089\u5566\uff01\u4f20\u9001\u95e8>>>"

    .line 105
    .local v1, "desc":Ljava/lang/String;
    const-string v0, "http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    .line 106
    .local v0, "contentUrl":Ljava/lang/String;
    const-string v2, "http://up.boohee.cn/house/u/one/ad/boohee_weibo.png"

    .line 107
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v1, v0, v2}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v3, 0x7f050000

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 46
    const-string v3, "pref_about_boohee"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 49
    .local v2, "versionPreference":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 51
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v3, "pref_share"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mSharePreference:Landroid/preference/Preference;

    .line 57
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mSharePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    const-string v3, "pref_terms"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mTermsPreference:Landroid/preference/Preference;

    .line 59
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mTermsPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    const-string v3, "pref_about_boohee"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mAboutBooheePreference:Landroid/preference/Preference;

    .line 61
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mAboutBooheePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    const-string v3, "pref_score"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mScorePreference:Landroid/preference/Preference;

    .line 63
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mScorePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    const-string v3, "password"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mPrivacyPreference:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mPrivacyPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v3, "isReceivePush"

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mIsReceivePushPreference:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mIsReceivePushPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mPrivacyPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mIsReceivePushPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 137
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/push/PushManager;->resumePush()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/push/PushManager;->pausePush()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mSharePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->share()V

    .line 96
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mTermsPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v1, "articleIntent":Landroid/content/Intent;
    const-string v2, "url"

    const-string v3, "/api/v1/articles/partner_rules.html"

    invoke-static {v3}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "title"

    const v3, 0x7f070604

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    .end local v1    # "articleIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mAboutBooheePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/boohee/more/DescriptionActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "aboutIntent":Landroid/content/Intent;
    const-string v2, "index"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0    # "aboutIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mScorePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->scoreUs()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 72
    new-instance v0, Lcom/boohee/database/OnePreference;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "mOnePrefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mPrivacyPreference:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PreferenceFragment;->mPrivacyPreference:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
