.class public Lcom/sec/internal/ims/settings/SmsSetting;
.super Ljava/lang/Object;
.source "SmsSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SmsSetting$Properties;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mMnoName:Ljava/lang/String;

.field private mMvnoName:Ljava/lang/String;

.field private mPhoneId:I

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/settings/SmsSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    .line 57
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    .line 60
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    .line 61
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 169
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of SmsSetting:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 171
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Last value of SmsSetting:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/-$$Lambda$SmsSetting$R-Jo97O6SeUiCAEQP1ljRskVrns;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/-$$Lambda$SmsSetting$R-Jo97O6SeUiCAEQP1ljRskVrns;-><init>(Lcom/sec/internal/ims/settings/SmsSetting;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public getAsCursor()Landroid/database/Cursor;
    .locals 3

    .line 162
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    .local v0, "cursor":Landroid/database/MatrixCursor;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 165
    return-object v0
.end method

.method public init()Z
    .locals 16

    .line 78
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 79
    iget v0, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 80
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v4

    sget-char v5, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "fullMnoName":[Ljava/lang/String;
    aget-object v5, v4, v3

    iput-object v5, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 83
    iget-object v5, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initialize with SIM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 84
    array-length v5, v4

    if-le v5, v2, :cond_0

    .line 85
    aget-object v5, v4, v2

    iput-object v5, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 87
    .end local v4    # "fullMnoName":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    iget-object v4, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string v6, "initialize without SIM"

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 89
    iget v4, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 90
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 94
    .end local v0    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 96
    iget-object v0, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    iget v4, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v0, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v4

    .line 99
    .local v4, "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 101
    .local v5, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .local v0, "wholeElement":Lcom/google/gson/JsonElement;
    :try_start_2
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    nop

    .line 108
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 109
    .local v5, "wholeObject":Lcom/google/gson/JsonObject;
    const-string v6, "default_setting"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 110
    .local v7, "defaultSmsSettingElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    iget-object v2, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string v8, "default_setting is not exist"

    invoke-virtual {v2, v6, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 112
    return v3

    .line 115
    :cond_3
    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 117
    .end local v7    # "defaultSmsSettingElement":Lcom/google/gson/JsonElement;
    .local v6, "defaultSmsSettingElement":Lcom/google/gson/JsonElement;
    const-string/jumbo v7, "sms_settings"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 118
    .local v7, "smsSettingsArray":Lcom/google/gson/JsonArray;
    invoke-static {v7}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 119
    iget-object v2, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v8, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string/jumbo v9, "sms_settings is not valid"

    invoke-virtual {v2, v8, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 120
    return v3

    .line 123
    :cond_4
    iget-object v3, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 124
    .local v3, "expectedMnoName":Ljava/lang/String;
    sget-object v8, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 126
    .local v8, "matchedSmsSettingElement":Lcom/google/gson/JsonElement;
    iget-object v9, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v10, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_5
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "mnoname"

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 131
    .local v10, "settingElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 132
    .local v12, "settingObject":Lcom/google/gson/JsonObject;
    invoke-virtual {v12, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "mnoName":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 134
    sget-object v9, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    iget v14, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find exact sms setting by "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v14, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    move-object v8, v12

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget-object v2, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    sget-object v2, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    iget v11, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "find sms setting expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " without MVNO"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v11, v14}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    move-object v2, v12

    move-object v8, v2

    .line 141
    .end local v10    # "settingElement":Lcom/google/gson/JsonElement;
    .end local v12    # "settingObject":Lcom/google/gson/JsonObject;
    .end local v13    # "mnoName":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 143
    :cond_8
    :goto_2
    invoke-static {v6, v8}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 144
    .end local v8    # "matchedSmsSettingElement":Lcom/google/gson/JsonElement;
    .local v2, "matchedSmsSettingElement":Lcom/google/gson/JsonElement;
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 145
    iget-object v8, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v9, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not defined sms setting for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 146
    move-object v2, v6

    goto :goto_3

    .line 148
    :cond_9
    invoke-virtual {v4, v2, v11}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 152
    :goto_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 153
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 154
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    sget-object v12, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v11, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    .line 155
    .local v11, "value":Lcom/google/gson/JsonElement;
    iget-object v12, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Lcom/google/gson/JsonElement;
    goto :goto_4

    .line 158
    :cond_a
    const/4 v8, 0x1

    return v8

    .line 99
    .end local v0    # "wholeElement":Lcom/google/gson/JsonElement;
    .end local v2    # "matchedSmsSettingElement":Lcom/google/gson/JsonElement;
    .end local v3    # "expectedMnoName":Ljava/lang/String;
    .end local v6    # "defaultSmsSettingElement":Lcom/google/gson/JsonElement;
    .end local v7    # "smsSettingsArray":Lcom/google/gson/JsonArray;
    .local v5, "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/SmsSetting;
    :goto_5
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v4    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/SmsSetting;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    iget-object v2, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, v1, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smssettings.json parse fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 105
    return v3
.end method

.method public synthetic lambda$dump$0$SmsSetting(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public updateMno(Landroid/content/ContentValues;Z)Z
    .locals 6
    .param p1, "mnoInfo"    # Landroid/content/ContentValues;
    .param p2, "force"    # Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    const-string v1, "mnoname"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "mnoName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    const-string v2, "mvnoname"

    invoke-static {p1, v2, v1}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "mvnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 68
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMno "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " force : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    move-result v2

    return v2
.end method
