.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;
.super Ljava/lang/Object;
.source "ImsServiceSwitchLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSwitchLoader"

.field protected static final SP_KEY_MNONAME:Ljava/lang/String; = "mnoname"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getImsSwitchFromJson(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/gson/JsonElement;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mnoname"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 40
    const/4 v0, 0x0

    .line 46
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ImsServiceSwitchLoader"

    if-eqz v1, :cond_0

    .line 47
    :try_start_1
    const-string v1, " getResources : imsswitch_tablet.json"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUSOpenDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, " getResources : imsswitch_open.json"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, " getResources : imsswitch.json"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 58
    :goto_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 59
    .local v1, "parser":Lcom/google/gson/JsonParser;
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v2, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 61
    .local v3, "ret":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz v0, :cond_2

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :goto_1
    goto :goto_2

    .line 69
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e1":Ljava/io/IOException;
    goto :goto_1

    .line 74
    :cond_2
    :goto_2
    return-object v3

    .line 66
    .end local v1    # "parser":Lcom/google/gson/JsonParser;
    .end local v2    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v3    # "ret":Lcom/google/gson/JsonElement;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 62
    :catch_1
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    if-eqz v0, :cond_3

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 71
    goto :goto_3

    .line 69
    :catch_2
    move-exception v3

    .line 70
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-object v2

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_4

    .line 68
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 71
    goto :goto_5

    .line 69
    :catch_3
    move-exception v2

    .line 70
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v1
.end method

.method public static getMatchedJsonElement(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/gson/JsonElement;
    .locals 11
    .param p0, "object"    # Lcom/google/gson/JsonObject;
    .param p1, "mnoname"    # Ljava/lang/String;
    .param p2, "mvnoname"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 78
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 79
    .local v0, "matchElement":Lcom/google/gson/JsonElement;
    const-string v1, "imsswitch"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 80
    .local v1, "imsswitchArray":Lcom/google/gson/JsonArray;
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    const-string v3, "ImsServiceSwitchLoader"

    if-nez v2, :cond_0

    .line 81
    const-string v2, "load: parse failed."

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    return-object v0

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 86
    .local v4, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 87
    .local v5, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "mnoname"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "name":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " found"

    if-nez v7, :cond_2

    .line 89
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v9, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "fullMnoName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 92
    move-object v0, v5

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImsSwitchFromJson - mvnoname on json:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 97
    move-object v0, v5

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadImsSwitchFromJson - primary mnoname on json:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, p3, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v7    # "fullMnoName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    move-object v0, v5

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadImsSwitchFromJson - mnoname on json:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    nop

    .line 107
    .end local v4    # "elem":Lcom/google/gson/JsonElement;
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v6    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    :cond_4
    :goto_2
    nop

    .line 111
    return-object v0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static hasImsSwitchAtJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mnoname"    # Ljava/lang/String;
    .param p2, "mvnoname"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 115
    invoke-static {p0, p1, p3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getImsSwitchFromJson(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 117
    .local v0, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x0

    return v1

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getMatchedJsonElement(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
