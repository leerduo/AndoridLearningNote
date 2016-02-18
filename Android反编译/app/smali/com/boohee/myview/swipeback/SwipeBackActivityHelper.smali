.class public Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;
.super Ljava/lang/Object;
.source "SwipeBackActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public convertActivityFromTranslucent()V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "convertFromTranslucent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    iget-object v1, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public convertActivityToTranslucent()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    const-class v7, Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 105
    .local v1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 106
    .local v6, "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 107
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TranslucentConversionListener"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    move-object v6, v2

    .line 106
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-le v7, v8, :cond_2

    .line 113
    const-class v7, Landroid/app/Activity;

    const-string v8, "convertToTranslucent"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/app/ActivityOptions;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 115
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 116
    iget-object v7, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 119
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v7, Landroid/app/Activity;

    const-string v8, "convertToTranslucent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 121
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    iget-object v7, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/swipeback/SwipeBackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeBackLayout()Lcom/boohee/myview/swipeback/SwipeBackLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301d2

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/swipeback/SwipeBackLayout;

    iput-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    .line 32
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    new-instance v1, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper$1;-><init>(Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/swipeback/SwipeBackLayout;->addSwipeListener(Lcom/boohee/myview/swipeback/SwipeBackLayout$SwipeListener;)V

    .line 50
    return-void
.end method

.method public onPostCreate()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/boohee/myview/swipeback/SwipeBackLayout;

    iget-object v1, p0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/boohee/myview/swipeback/SwipeBackLayout;->attachToActivity(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->convertActivityFromTranslucent()V

    .line 55
    return-void
.end method
