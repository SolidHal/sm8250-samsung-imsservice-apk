.class public Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;
.super Ljava/lang/Object;
.source "MailBoxHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMailBoxReset(Ljava/lang/String;)Z
    .locals 8
    .param p0, "strbody"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "JsonRoot":Lorg/json/JSONObject;
    const-string v2, "notificationList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    .local v2, "notifications":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 46
    return v0

    .line 48
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 49
    .local v3, "notification":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 50
    return v0

    .line 52
    :cond_1
    const-string v4, "nmsEventList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 53
    .local v4, "nmsEventList":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 54
    return v0

    .line 56
    :cond_2
    const-string v5, "nmsEvent"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 57
    .local v5, "nmsEvents":Lorg/json/JSONArray;
    if-nez v5, :cond_3

    .line 58
    return v0

    .line 60
    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 61
    .local v6, "nmsEvent":Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    const-string/jumbo v7, "resetBox"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    .line 62
    const/4 v0, 0x1

    return v0

    .line 66
    .end local v1    # "JsonRoot":Lorg/json/JSONObject;
    .end local v2    # "notifications":Lorg/json/JSONArray;
    .end local v3    # "notification":Lorg/json/JSONObject;
    .end local v4    # "nmsEventList":Lorg/json/JSONObject;
    .end local v5    # "nmsEvents":Lorg/json/JSONArray;
    .end local v6    # "nmsEvent":Lorg/json/JSONObject;
    :cond_4
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method
