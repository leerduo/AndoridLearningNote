.class Lcom/boohee/one/onekey/CityListActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/CityListActivity;->requestCityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/CityListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/CityListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 131
    const-string v10, "city"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    .local v2, "city":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    const-string v10, "city_id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 133
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    const-string v11, "city_id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    # setter for: Lcom/boohee/one/onekey/CityListActivity;->mCityId:I
    invoke-static {v10, v11}, Lcom/boohee/one/onekey/CityListActivity;->access$102(Lcom/boohee/one/onekey/CityListActivity;I)I

    .line 135
    :cond_0
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    const-string v11, "city_name"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/boohee/one/onekey/CityListActivity;->access$202(Lcom/boohee/one/onekey/CityListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$200(Lcom/boohee/one/onekey/CityListActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 137
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->tv_gps:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$300(Lcom/boohee/one/onekey/CityListActivity;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;
    invoke-static {v12}, Lcom/boohee/one/onekey/CityListActivity;->access$200(Lcom/boohee/one/onekey/CityListActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(GPS)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    const-string v10, "hot"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "hotString":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v10}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 143
    const-class v10, Lcom/boohee/one/onekey/model/City;

    invoke-static {v5, v10}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 144
    .local v4, "hotCities":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 145
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mHotList:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$400(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$500(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mCityId:I
    invoke-static {v11}, Lcom/boohee/one/onekey/CityListActivity;->access$100(Lcom/boohee/one/onekey/CityListActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->updateListView(I)V

    .line 149
    .end local v4    # "hotCities":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    :cond_1
    const-string v10, "all"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "allCities":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v10}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 151
    const-class v10, Lcom/boohee/one/onekey/model/LetterCity;

    invoke-static {v0, v10}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 152
    .local v8, "letterCities":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/LetterCity;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 153
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$600(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .end local v8    # "letterCities":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/LetterCity;>;"
    :cond_2
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$600(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$600(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 157
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$600(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/boohee/one/onekey/model/LetterCity;

    .line 158
    .local v9, "letterCity":Lcom/boohee/one/onekey/model/LetterCity;
    iget-object v3, v9, Lcom/boohee/one/onekey/model/LetterCity;->cities:Ljava/util/List;

    .line 159
    .local v3, "cityList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 160
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/onekey/model/City;

    .line 161
    .local v1, "c":Lcom/boohee/one/onekey/model/City;
    iget-object v10, v9, Lcom/boohee/one/onekey/model/LetterCity;->first_word:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    goto :goto_2

    .line 139
    .end local v0    # "allCities":Ljava/lang/String;
    .end local v1    # "c":Lcom/boohee/one/onekey/model/City;
    .end local v3    # "cityList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    .end local v5    # "hotString":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "letterCity":Lcom/boohee/one/onekey/model/LetterCity;
    :cond_4
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->tv_gps:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$300(Lcom/boohee/one/onekey/CityListActivity;)Landroid/widget/TextView;

    move-result-object v10

    const-string v11, "\u65e0"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 163
    .restart local v0    # "allCities":Ljava/lang/String;
    .restart local v3    # "cityList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    .restart local v5    # "hotString":Ljava/lang/String;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "letterCity":Lcom/boohee/one/onekey/model/LetterCity;
    :cond_5
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mCityList:Ljava/util/List;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$700(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 166
    .end local v3    # "cityList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "letterCity":Lcom/boohee/one/onekey/model/LetterCity;
    :cond_6
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$000(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mCityId:I
    invoke-static {v11}, Lcom/boohee/one/onekey/CityListActivity;->access$100(Lcom/boohee/one/onekey/CityListActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->updateListView(I)V

    .line 167
    iget-object v10, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    invoke-static {v10}, Lcom/boohee/one/onekey/CityListActivity;->access$000(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-virtual {v10, v11}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->setOnCitySelectedListener(Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;)V

    .line 169
    :cond_7
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 174
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity$2;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/CityListActivity;->dismissLoading()V

    .line 175
    return-void
.end method
