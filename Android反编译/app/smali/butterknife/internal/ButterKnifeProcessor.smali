.class public final Lbutterknife/internal/ButterKnifeProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ButterKnifeProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ANDROID_PREFIX:Ljava/lang/String; = "android."

.field public static final JAVA_PREFIX:Ljava/lang/String; = "java."

.field private static final LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LIST_TYPE:Ljava/lang/String;

.field public static final SUFFIX:Ljava/lang/String; = "$$ViewInjector"

.field static final VIEW_TYPE:Ljava/lang/String; = "android.view.View"


# instance fields
.field private elementUtils:Ljavax/lang/model/util/Elements;

.field private filer:Ljavax/annotation/processing/Filer;

.field private typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    const-class v0, Lbutterknife/internal/ButterKnifeProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lbutterknife/internal/ButterKnifeProcessor;->$assertionsDisabled:Z

    .line 64
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lbutterknife/OnCheckedChanged;

    aput-object v3, v0, v2

    const-class v2, Lbutterknife/OnClick;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lbutterknife/OnEditorAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lbutterknife/OnFocusChange;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lbutterknife/OnItemClick;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lbutterknife/OnItemLongClick;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lbutterknife/OnItemSelected;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lbutterknife/OnLongClick;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lbutterknife/OnPageChange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lbutterknife/OnTextChanged;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lbutterknife/OnTouch;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 3
    .param p1, "elementType"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 373
    iget-object v2, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v2, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "name":Ljava/lang/String;
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 375
    .local v1, "typeParamStart":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_0
    return-object v0
.end method

.method private varargs error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 683
    array-length v0, p3

    if-lez v0, :cond_0

    .line 684
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 686
    :cond_0
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 687
    return-void
.end method

.method private findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V
    .locals 8
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .local p4, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 386
    .local v1, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    invoke-direct {p0, p2, v1, p3, p4}, Lbutterknife/internal/ButterKnifeProcessor;->parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 389
    .local v2, "stackTrace":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 391
    const-string v4, "Unable to generate view injector for @%s.\n\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 392
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 391
    invoke-direct {p0, v1, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    .end local v2    # "stackTrace":Ljava/io/StringWriter;
    :cond_0
    return-void
.end method

.method private findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;
    .locals 13
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 124
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .local v7, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 128
    .local v3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v8, Lbutterknife/InjectView;

    invoke-interface {p1, v8}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 130
    .local v1, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    invoke-direct {p0, v1, v7, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseInjectView(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 133
    .local v6, "stackTrace":Ljava/io/StringWriter;
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v9}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 135
    const-string v9, "Unable to generate view injector for @InjectView.\n\n%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-direct {p0, v1, v9, v10}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    .end local v6    # "stackTrace":Ljava/io/StringWriter;
    :cond_0
    const-class v8, Lbutterknife/InjectViews;

    invoke-interface {p1, v8}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 142
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_1
    invoke-direct {p0, v1, v7, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseInjectViews(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 145
    .restart local v6    # "stackTrace":Ljava/io/StringWriter;
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v9}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 147
    const-string v9, "Unable to generate view injector for @InjectViews.\n\n%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-direct {p0, v1, v9, v10}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    .end local v6    # "stackTrace":Ljava/io/StringWriter;
    :cond_1
    sget-object v8, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 153
    .local v4, "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, v4, v7, v3}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_2

    .line 157
    .end local v4    # "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 158
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v8, v3}, Lbutterknife/internal/ButterKnifeProcessor;->findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "parentClassFqcn":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbutterknife/internal/ViewInjector;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "$$ViewInjector"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lbutterknife/internal/ViewInjector;->setParentInjector(Ljava/lang/String;)V

    goto :goto_3

    .line 164
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .end local v5    # "parentClassFqcn":Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method private static findDuplicate([I)Ljava/lang/Integer;
    .locals 5
    .param p0, "array"    # [I

    .prologue
    .line 360
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 362
    .local v1, "seenElements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 363
    .local v0, "element":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 368
    .end local v0    # "element":I
    :goto_1
    return-object v2

    .line 362
    .restart local v0    # "element":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "element":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, "parents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 667
    .local v1, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 668
    const/4 v2, 0x0

    .line 673
    .end local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    return-object v2

    .line 670
    .restart local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .end local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .end local p1    # "typeElement":Ljavax/lang/model/element/TypeElement;
    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 671
    .restart local p1    # "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-direct {p0, p1}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v0}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 659
    .local v0, "packageLen":I
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;
    .locals 6
    .param p2, "enclosingElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lbutterknife/internal/ViewInjector;"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ViewInjector;

    .line 646
    .local v3, "viewInjector":Lbutterknife/internal/ViewInjector;
    if-nez v3, :cond_0

    .line 647
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "targetType":Ljava/lang/String;
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "classPackage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$$ViewInjector"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Lbutterknife/internal/ViewInjector;

    .end local v3    # "viewInjector":Lbutterknife/internal/ViewInjector;
    invoke-direct {v3, v1, v0, v2}, Lbutterknife/internal/ViewInjector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .restart local v3    # "viewInjector":Lbutterknife/internal/ViewInjector;
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classPackage":Ljava/lang/String;
    .end local v2    # "targetType":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;

    .prologue
    .line 690
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z
    .locals 7
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 203
    .local v0, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "qualifiedName":Ljava/lang/String;
    const-string v4, "android."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const-string v4, "@%s-annotated class incorrectly in Android framework package. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    .line 206
    invoke-direct {p0, p2, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :goto_0
    return v2

    .line 210
    :cond_0
    const-string v4, "java."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    const-string v4, "@%s-annotated class incorrectly in Java framework package. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    .line 211
    invoke-direct {p0, p2, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 216
    goto :goto_0
.end method

.method private isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z
    .locals 11
    .param p2, "targetThing"    # Ljava/lang/String;
    .param p3, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "hasError":Z
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 173
    .local v0, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    .line 174
    .local v2, "modifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :cond_0
    const-string v3, "@%s %s must not be private or static. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 177
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 175
    invoke-direct {p0, p3, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    const/4 v1, 0x1

    .line 182
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_2

    .line 183
    const-string v3, "@%s %s may only be contained in classes. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 185
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 183
    invoke-direct {p0, v0, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const/4 v1, 0x1

    .line 190
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    const-string v3, "@%s %s may not be contained in private classes. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 193
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 191
    invoke-direct {p0, v0, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const/4 v1, 0x1

    .line 197
    :cond_3
    return v1
.end method

.method private isInterface(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    const/4 v0, 0x0

    .line 597
    instance-of v1, p1, Ljavax/lang/model/type/DeclaredType;

    if-nez v1, :cond_1

    .line 600
    .end local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .end local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z
    .locals 12
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "otherType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 604
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v8

    .line 607
    :cond_1
    instance-of v10, p1, Ljavax/lang/model/type/DeclaredType;

    if-nez v10, :cond_2

    move v8, v9

    .line 608
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 610
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 611
    .local v0, "declaredType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 612
    .local v5, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .local v7, "typeString":Ljava/lang/StringBuilder;
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 616
    if-lez v2, :cond_3

    .line 617
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :cond_3
    const/16 v10, 0x3f

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_4
    const/16 v10, 0x3e

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 626
    .end local v2    # "i":I
    .end local v7    # "typeString":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 627
    .local v1, "element":Ljavax/lang/model/element/Element;
    instance-of v10, v1, Ljavax/lang/model/element/TypeElement;

    if-nez v10, :cond_6

    move v8, v9

    .line 628
    goto :goto_0

    :cond_6
    move-object v6, v1

    .line 630
    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 631
    .local v6, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 632
    .local v4, "superType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v4, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 635
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 636
    .local v3, "interfaceType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v3, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_0

    .end local v3    # "interfaceType":Ljavax/lang/model/type/TypeMirror;
    :cond_8
    move v8, v9

    .line 640
    goto :goto_0
.end method

.method private parseInjectView(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 22
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 222
    .local v8, "hasError":Z
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 225
    .local v6, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 226
    .local v5, "elementType":Ljavax/lang/model/type/TypeMirror;
    instance-of v0, v5, Ljavax/lang/model/type/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v15, v5

    .line 227
    check-cast v15, Ljavax/lang/model/type/TypeVariable;

    .line 228
    .local v15, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v15}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 230
    .end local v15    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_0
    const-string v18, "android.view.View"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 231
    const-string v18, "@InjectView fields must extend from View or be an interface. (%s.%s)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 232
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const/4 v8, 0x1

    .line 237
    :cond_1
    const-class v18, Lbutterknife/InjectView;

    const-string v19, "fields"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v18

    or-int v8, v8, v18

    .line 238
    const-class v18, Lbutterknife/InjectView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v18

    or-int v8, v8, v18

    .line 241
    const-class v18, Lbutterknife/InjectViews;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 242
    const-string v18, "Only one of @InjectView and @InjectViews is allowed. (%s.%s)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 243
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v8, 0x1

    .line 247
    :cond_2
    if-eqz v8, :cond_3

    .line 280
    :goto_0
    return-void

    .line 252
    :cond_3
    const-class v18, Lbutterknife/InjectView;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lbutterknife/InjectView;

    invoke-interface/range {v18 .. v18}, Lbutterknife/InjectView;->value()I

    move-result v9

    .line 254
    .local v9, "id":I
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbutterknife/internal/ViewInjector;

    .line 255
    .local v10, "injector":Lbutterknife/internal/ViewInjector;
    if-eqz v10, :cond_4

    .line 256
    invoke-virtual {v10, v9}, Lbutterknife/internal/ViewInjector;->getViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object v16

    .line 257
    .local v16, "viewInjection":Lbutterknife/internal/ViewInjection;
    if-eqz v16, :cond_4

    .line 258
    invoke-virtual/range {v16 .. v16}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 259
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/ViewBinding;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 260
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbutterknife/internal/ViewBinding;

    .line 261
    .local v7, "existingBinding":Lbutterknife/internal/ViewBinding;
    const-string v18, "Attempt to use @InjectView for an already injected ID %d on \'%s\'. (%s.%s)"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 262
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 263
    invoke-virtual {v7}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    .line 264
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    .end local v7    # "existingBinding":Lbutterknife/internal/ViewBinding;
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/ViewBinding;>;"
    .end local v16    # "viewInjection":Lbutterknife/internal/ViewInjection;
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v5}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, "type":Ljava/lang/String;
    const-class v18, Lbutterknife/Optional;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    if-nez v18, :cond_5

    const/4 v13, 0x1

    .line 274
    .local v13, "required":Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object v17

    .line 275
    .local v17, "viewInjector":Lbutterknife/internal/ViewInjector;
    new-instance v4, Lbutterknife/internal/ViewBinding;

    invoke-direct {v4, v12, v14, v13}, Lbutterknife/internal/ViewBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    .local v4, "binding":Lbutterknife/internal/ViewBinding;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v4}, Lbutterknife/internal/ViewInjector;->addView(ILbutterknife/internal/ViewBinding;)V

    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 272
    .end local v4    # "binding":Lbutterknife/internal/ViewBinding;
    .end local v13    # "required":Z
    .end local v17    # "viewInjector":Lbutterknife/internal/ViewInjector;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private parseInjectViews(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 25
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 285
    .local v11, "hasError":Z
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/TypeElement;

    .line 288
    .local v9, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    .line 289
    .local v8, "elementType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lbutterknife/internal/ButterKnifeProcessor;->doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "erasedType":Ljava/lang/String;
    const/16 v20, 0x0

    .line 291
    .local v20, "viewType":Ljavax/lang/model/type/TypeMirror;
    const/4 v13, 0x0

    .line 292
    .local v13, "kind":Lbutterknife/internal/CollectionBinding$Kind;
    invoke-interface {v8}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v21

    sget-object v22, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object v4, v8

    .line 293
    check-cast v4, Ljavax/lang/model/type/ArrayType;

    .line 294
    .local v4, "arrayType":Ljavax/lang/model/type/ArrayType;
    invoke-interface {v4}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v20

    .line 295
    sget-object v13, Lbutterknife/internal/CollectionBinding$Kind;->ARRAY:Lbutterknife/internal/CollectionBinding$Kind;

    .line 312
    .end local v4    # "arrayType":Ljavax/lang/model/type/ArrayType;
    :goto_0
    move-object/from16 v0, v20

    instance-of v0, v0, Ljavax/lang/model/type/TypeVariable;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v18, v20

    .line 313
    check-cast v18, Ljavax/lang/model/type/TypeVariable;

    .line 314
    .local v18, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v20

    .line 318
    .end local v18    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_0
    if-eqz v20, :cond_1

    const-string v21, "android.view.View"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 319
    const-string v21, "@InjectViews type must extend from View or be an interface. (%s.%s)"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 320
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v11, 0x1

    .line 325
    :cond_1
    const-class v21, Lbutterknife/InjectViews;

    const-string v22, "fields"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v21

    or-int v11, v11, v21

    .line 326
    const-class v21, Lbutterknife/InjectViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v21

    or-int v11, v11, v21

    .line 328
    if-eqz v11, :cond_5

    .line 356
    :goto_1
    return-void

    .line 296
    :cond_2
    sget-object v21, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object v6, v8

    .line 297
    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    .line 298
    .local v6, "declaredType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v17

    .line 299
    .local v17, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 300
    const-string v21, "@InjectViews List must have a generic component. (%s.%s)"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 301
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v11, 0x1

    .line 306
    :goto_2
    sget-object v13, Lbutterknife/internal/CollectionBinding$Kind;->LIST:Lbutterknife/internal/CollectionBinding$Kind;

    .line 307
    goto/16 :goto_0

    .line 304
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "viewType":Ljavax/lang/model/type/TypeMirror;
    check-cast v20, Ljavax/lang/model/type/TypeMirror;

    .restart local v20    # "viewType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_2

    .line 308
    .end local v6    # "declaredType":Ljavax/lang/model/type/DeclaredType;
    .end local v17    # "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    :cond_4
    const-string v21, "@InjectViews must be a List or array. (%s.%s)"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 309
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 333
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 334
    .local v14, "name":Ljava/lang/String;
    const-class v21, Lbutterknife/InjectViews;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lbutterknife/InjectViews;

    invoke-interface/range {v21 .. v21}, Lbutterknife/InjectViews;->value()[I

    move-result-object v12

    .line 335
    .local v12, "ids":[I
    array-length v0, v12

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 336
    const-string v21, "@InjectViews must specify at least one ID. (%s.%s)"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 337
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 341
    :cond_6
    invoke-static {v12}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v7

    .line 342
    .local v7, "duplicateId":Ljava/lang/Integer;
    if-eqz v7, :cond_7

    .line 343
    const-string v21, "@InjectViews annotation contains duplicate ID %d. (%s.%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    const/16 v23, 0x1

    .line 344
    invoke-interface {v9}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_7
    sget-boolean v21, Lbutterknife/internal/ButterKnifeProcessor;->$assertionsDisabled:Z

    if-nez v21, :cond_8

    if-nez v20, :cond_8

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 348
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v16

    .line 349
    .local v16, "type":Ljava/lang/String;
    const-class v21, Lbutterknife/Optional;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    if-nez v21, :cond_9

    const/4 v15, 0x1

    .line 351
    .local v15, "required":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object v19

    .line 352
    .local v19, "viewInjector":Lbutterknife/internal/ViewInjector;
    new-instance v5, Lbutterknife/internal/CollectionBinding;

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v0, v13, v15}, Lbutterknife/internal/CollectionBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lbutterknife/internal/CollectionBinding$Kind;Z)V

    .line 353
    .local v5, "binding":Lbutterknife/internal/CollectionBinding;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v5}, Lbutterknife/internal/ViewInjector;->addCollection([ILbutterknife/internal/CollectionBinding;)V

    .line 355
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 349
    .end local v5    # "binding":Lbutterknife/internal/CollectionBinding;
    .end local v15    # "required":Z
    .end local v19    # "viewInjector":Lbutterknife/internal/ViewInjector;
    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 42
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .local p4, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/lang/model/element/ExecutableElement;

    move/from16 v36, v0

    if-eqz v36, :cond_0

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v36

    sget-object v37, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1

    .line 402
    :cond_0
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "@%s annotation must be on a method."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 403
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    :cond_1
    move-object/from16 v13, p2

    .line 406
    check-cast v13, Ljavax/lang/model/element/ExecutableElement;

    .line 407
    .local v13, "executableElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v12

    check-cast v12, Ljavax/lang/model/element/TypeElement;

    .line 410
    .local v12, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 411
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    const-string v36, "value"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 412
    .local v6, "annotationValue":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v36

    const-class v37, [I

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 413
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "@%s annotation value() type not int[]."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object p1, v38, v39

    .line 414
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 417
    :cond_2
    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [I

    move-object/from16 v17, v36

    check-cast v17, [I

    .line 418
    .local v17, "ids":[I
    invoke-interface {v13}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    .line 419
    .local v26, "name":Ljava/lang/String;
    const-class v36, Lbutterknife/Optional;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    if-nez v36, :cond_4

    const/16 v31, 0x1

    .line 422
    .local v31, "required":Z
    :goto_0
    const-string v36, "methods"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v14

    .line 423
    .local v14, "hasError":Z
    invoke-direct/range {p0 .. p2}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v36

    or-int v14, v14, v36

    .line 425
    invoke-static/range {v17 .. v17}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v11

    .line 426
    .local v11, "duplicateId":Ljava/lang/Integer;
    if-eqz v11, :cond_3

    .line 427
    const-string v36, "@%s annotation for method contains duplicate ID %d. (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 428
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v11, v37, v38

    const/16 v38, 0x2

    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    .line 429
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    const/4 v14, 0x1

    .line 433
    :cond_3
    const-class v36, Lbutterknife/internal/ListenerClass;

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lbutterknife/internal/ListenerClass;

    .line 434
    .local v19, "listener":Lbutterknife/internal/ListenerClass;
    if-nez v19, :cond_5

    .line 435
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "No @%s defined on @%s."

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-class v40, Lbutterknife/internal/ListenerClass;

    .line 436
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 437
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 436
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 419
    .end local v11    # "duplicateId":Ljava/lang/Integer;
    .end local v14    # "hasError":Z
    .end local v19    # "listener":Lbutterknife/internal/ListenerClass;
    .end local v31    # "required":Z
    :cond_4
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 440
    .restart local v11    # "duplicateId":Ljava/lang/Integer;
    .restart local v14    # "hasError":Z
    .restart local v19    # "listener":Lbutterknife/internal/ListenerClass;
    .restart local v31    # "required":Z
    :cond_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_1
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    aget v16, v17, v36

    .line 441
    .local v16, "id":I
    const/16 v38, -0x1

    move/from16 v0, v16

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 442
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    .line 443
    if-nez v31, :cond_6

    .line 444
    const-string v38, "ID free injection must not be annotated with @Optional. (%s.%s)"

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 445
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const/4 v14, 0x1

    .line 450
    :cond_6
    invoke-interface/range {v19 .. v19}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v33

    .line 451
    .local v33, "targetType":Ljava/lang/String;
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 452
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 453
    const-string v38, "@%s annotation without an ID may only be used with an object of type \"%s\" or an interface. (%s.%s)"

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 455
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    aput-object v33, v39, v40

    const/16 v40, 0x2

    .line 456
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    const/4 v14, 0x1

    .line 440
    .end local v33    # "targetType":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_1

    .line 460
    :cond_8
    const-string v38, "@%s annotation contains invalid ID %d. (%s.%s)"

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 461
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x2

    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x3

    .line 462
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    const/4 v14, 0x1

    goto :goto_2

    .line 469
    .end local v16    # "id":I
    :cond_9
    invoke-interface/range {v19 .. v19}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v25

    .line 470
    .local v25, "methods":[Lbutterknife/internal/ListenerMethod;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_a

    .line 471
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "Multiple listener methods specified on @%s."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 472
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 471
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 473
    :cond_a
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 474
    invoke-interface/range {v19 .. v19}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object v36

    const-class v37, Lbutterknife/internal/ListenerClass$NONE;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_b

    .line 475
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "Both method() and callback() defined on @%s."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 477
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 476
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 479
    :cond_b
    const/16 v36, 0x0

    aget-object v20, v25, v36

    .line 494
    .local v20, "method":Lbutterknife/internal/ListenerMethod;
    :cond_c
    invoke-interface {v13}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v24

    .line 495
    .local v24, "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_d

    .line 496
    const-string v36, "@%s methods can have at most %s parameter(s). (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    .line 498
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    const/4 v14, 0x1

    .line 503
    :cond_d
    invoke-interface {v13}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v32

    .line 504
    .local v32, "returnType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, v32

    instance-of v0, v0, Ljavax/lang/model/type/TypeVariable;

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v34, v32

    .line 505
    check-cast v34, Ljavax/lang/model/type/TypeVariable;

    .line 506
    .local v34, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v34 .. v34}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v32

    .line 508
    .end local v34    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_e
    invoke-interface/range {v32 .. v32}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_f

    .line 509
    const-string v36, "@%s methods must have a \'%s\' return type. (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 510
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    .line 511
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    const/4 v14, 0x1

    .line 515
    :cond_f
    if-eqz v14, :cond_11

    .line 594
    :goto_3
    return-void

    .line 481
    .end local v20    # "method":Lbutterknife/internal/ListenerMethod;
    .end local v24    # "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .end local v32    # "returnType":Ljavax/lang/model/type/TypeMirror;
    :cond_10
    const-string v36, "callback"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 482
    .local v5, "annotationCallback":Ljava/lang/reflect/Method;
    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Enum;

    .line 483
    .local v9, "callback":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v9}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 484
    .local v10, "callbackField":Ljava/lang/reflect/Field;
    const-class v36, Lbutterknife/internal/ListenerMethod;

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lbutterknife/internal/ListenerMethod;

    .line 485
    .restart local v20    # "method":Lbutterknife/internal/ListenerMethod;
    if-nez v20, :cond_c

    .line 486
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "No @%s defined on @%s\'s %s.%s."

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-class v40, Lbutterknife/internal/ListenerMethod;

    .line 487
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 488
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x2

    invoke-virtual {v9}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x3

    .line 489
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 487
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 519
    .end local v5    # "annotationCallback":Ljava/lang/reflect/Method;
    .end local v9    # "callback":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v10    # "callbackField":Ljava/lang/reflect/Field;
    .restart local v24    # "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .restart local v32    # "returnType":Ljavax/lang/model/type/TypeMirror;
    :cond_11
    sget-object v30, Lbutterknife/internal/Parameter;->NONE:[Lbutterknife/internal/Parameter;

    .line 520
    .local v30, "parameters":[Lbutterknife/internal/Parameter;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1b

    .line 521
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Lbutterknife/internal/Parameter;

    move-object/from16 v30, v0

    .line 522
    new-instance v23, Ljava/util/BitSet;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 523
    .local v23, "methodParameterUsed":Ljava/util/BitSet;
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v29

    .line 524
    .local v29, "parameterTypes":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_1b

    .line 525
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavax/lang/model/element/VariableElement;

    .line 526
    .local v21, "methodParameter":Ljavax/lang/model/element/VariableElement;
    invoke-interface/range {v21 .. v21}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v22

    .line 527
    .local v22, "methodParameterType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljavax/lang/model/type/TypeVariable;

    move/from16 v36, v0

    if-eqz v36, :cond_12

    move-object/from16 v34, v22

    .line 528
    check-cast v34, Ljavax/lang/model/type/TypeVariable;

    .line 529
    .restart local v34    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v34 .. v34}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v22

    .line 532
    .end local v34    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_12
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_5
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 533
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 532
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 536
    :cond_14
    aget-object v36, v29, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_15

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 538
    :cond_15
    new-instance v36, Lbutterknife/internal/Parameter;

    invoke-interface/range {v22 .. v22}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move/from16 v1, v18

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/Parameter;-><init>(ILjava/lang/String;)V

    aput-object v36, v30, v15

    .line 539
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 543
    :cond_16
    aget-object v36, v30, v15

    if-nez v36, :cond_1a

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string v36, "Unable to match @"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 546
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " method arguments. ("

    .line 547
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 548
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2e

    .line 549
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 550
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x29

    .line 551
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_18

    .line 553
    aget-object v27, v30, v18

    .line 554
    .local v27, "parameter":Lbutterknife/internal/Parameter;
    const-string v36, "\n\n  Parameter #"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    add-int/lit8 v37, v18, 0x1

    .line 555
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    .line 556
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 557
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljavax/lang/model/element/VariableElement;

    invoke-interface/range {v36 .. v36}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n    "

    .line 558
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    if-nez v27, :cond_17

    .line 560
    const-string v36, "did not match any listener parameters"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 562
    :cond_17
    const-string v36, "matched listener parameter #"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 563
    invoke-virtual/range {v27 .. v27}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    .line 564
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 565
    invoke-virtual/range {v27 .. v27}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 568
    .end local v27    # "parameter":Lbutterknife/internal/Parameter;
    :cond_18
    const-string v36, "\n\nMethods may have up to "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 569
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " parameter(s):\n"

    .line 570
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v38, v0

    const/16 v36, 0x0

    :goto_8
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_19

    aget-object v28, v37, v36

    .line 572
    .local v28, "parameterType":Ljava/lang/String;
    const-string v39, "\n  "

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v36, v36, 0x1

    goto :goto_8

    .line 574
    .end local v28    # "parameterType":Ljava/lang/String;
    :cond_19
    const-string v36, "\n\nThese may be listed in any order but will be searched for from top to bottom."

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v13, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 524
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 582
    .end local v15    # "i":I
    .end local v18    # "j":I
    .end local v21    # "methodParameter":Ljavax/lang/model/element/VariableElement;
    .end local v22    # "methodParameterType":Ljavax/lang/model/type/TypeMirror;
    .end local v23    # "methodParameterUsed":Ljava/util/BitSet;
    .end local v29    # "parameterTypes":[Ljava/lang/String;
    :cond_1b
    new-instance v7, Lbutterknife/internal/ListenerBinding;

    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v31

    invoke-direct {v7, v0, v1, v2}, Lbutterknife/internal/ListenerBinding;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 583
    .local v7, "binding":Lbutterknife/internal/ListenerBinding;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object v35

    .line 584
    .local v35, "viewInjector":Lbutterknife/internal/ViewInjector;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_9
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    aget v16, v17, v36

    .line 585
    .restart local v16    # "id":I
    move-object/from16 v0, v35

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v7}, Lbutterknife/internal/ViewInjector;->addListener(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)Z

    move-result v38

    if-nez v38, :cond_1c

    .line 586
    const-string v36, "Multiple listener methods with return value specified for ID %d. (%s.%s)"

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 587
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 584
    :cond_1c
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 593
    .end local v16    # "id":I
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method


# virtual methods
.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    .local v1, "supportTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Lbutterknife/InjectView;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-class v2, Lbutterknife/InjectViews;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v2, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 96
    .local v0, "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    return-object v1
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 679
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 86
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 87
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 88
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 12
    .param p2, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;

    move-result-object v3

    .line 105
    .local v3, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 107
    .local v4, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbutterknife/internal/ViewInjector;

    .line 110
    .local v5, "viewInjector":Lbutterknife/internal/ViewInjector;
    :try_start_0
    iget-object v8, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;

    invoke-virtual {v5}, Lbutterknife/internal/ViewInjector;->getFqcn()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/lang/model/element/Element;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-interface {v8, v9, v10}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    .line 111
    .local v2, "jfo":Ljavax/tools/JavaFileObject;
    invoke-interface {v2}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v6

    .line 112
    .local v6, "writer":Ljava/io/Writer;
    invoke-virtual {v5}, Lbutterknife/internal/ViewInjector;->brewJava()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 114
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v2    # "jfo":Ljavax/tools/JavaFileObject;
    .end local v6    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Unable to write injector for type %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {p0, v4, v8, v9}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/ViewInjector;>;"
    .end local v4    # "typeElement":Ljavax/lang/model/element/TypeElement;
    .end local v5    # "viewInjector":Lbutterknife/internal/ViewInjector;
    :cond_0
    const/4 v7, 0x1

    return v7
.end method
