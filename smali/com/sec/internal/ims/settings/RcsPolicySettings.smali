.class public Lcom/sec/internal/ims/settings/RcsPolicySettings;
.super Ljava/lang/Object;
.source "RcsPolicySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicy;,
        Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCS_AS_POLICY:Ljava/lang/String; = "rcs_as_policy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mPhoneId:I

.field private mRcsPolicy:Lcom/google/gson/JsonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    .line 370
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    .line 375
    iput-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    .line 376
    iput p2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    .line 377
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x12c

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 378
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->load(Z)Z

    .line 379
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public load(Z)Z
    .locals 22
    .param p1, "forceReload"    # Z

    .line 382
    move-object/from16 v1, p0

    iget v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    .line 383
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget v2, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    iget-object v3, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v2

    .line 384
    .local v2, "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "newPolicyTypeName":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    const-string/jumbo v4, "policy_name"

    if-eqz v0, :cond_0

    .line 386
    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "currentPolicyName":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 389
    iget-object v4, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string/jumbo v7, "policy not changed skip reloading"

    invoke-virtual {v4, v5, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 390
    return v6

    .line 392
    :cond_1
    move-object v5, v3

    .line 397
    .end local v0    # "currentPolicyName":Ljava/lang/String;
    .local v5, "currentPolicyName":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load from rcspolicy.json "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 400
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f05000c

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v0

    .line 401
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 402
    .local v0, "parser":Lcom/google/gson/JsonParser;
    new-instance v8, Lcom/google/gson/stream/JsonReader;

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v8, v9}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 403
    .local v8, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 404
    .local v9, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v8}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .end local v0    # "parser":Lcom/google/gson/JsonParser;
    .end local v8    # "reader":Lcom/google/gson/stream/JsonReader;
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "element":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    goto/16 :goto_9

    .line 408
    .restart local v9    # "element":Lcom/google/gson/JsonElement;
    :cond_2
    :goto_1
    nop

    .line 410
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 411
    .local v0, "object":Lcom/google/gson/JsonObject;
    const-string v7, "default_rcs_policy"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 412
    .local v7, "defaultRcsElement":Lcom/google/gson/JsonElement;
    const-string v8, "default_up_policy"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 413
    .local v8, "defaultUpElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v16, v0

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 418
    :cond_3
    move-object v6, v7

    .line 419
    .local v6, "parentPolicy":Lcom/google/gson/JsonElement;
    const-string v10, "default_rcs_policy"

    .line 420
    .local v10, "defaultRcsPolicyTag":Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->fromString(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isUp()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 421
    move-object v6, v8

    .line 422
    const-string v10, "default_up_policy"

    .line 425
    :cond_4
    const-string/jumbo v11, "rcs_policy"

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v11

    .line 426
    .local v11, "imstrategyArray":Lcom/google/gson/JsonArray;
    sget-object v12, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 428
    .local v12, "currentPolicy":Lcom/google/gson/JsonElement;
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gson/JsonElement;

    .line 429
    .local v14, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 430
    .local v15, "policyName":Ljava/lang/String;
    invoke-static {v5, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 432
    move-object v12, v14

    .line 433
    goto :goto_3

    .line 435
    .end local v14    # "elem":Lcom/google/gson/JsonElement;
    .end local v15    # "policyName":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 437
    :cond_6
    :goto_3
    sget-object v13, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 438
    .local v13, "rcsAsPolicy":Lcom/google/gson/JsonElement;
    const-string v14, ""

    .line 439
    .local v14, "rcsAsPolicyName":Ljava/lang/String;
    sget-object v15, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v12, v15, :cond_7

    .line 440
    iget-object v4, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v15, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    move-object/from16 v16, v0

    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .local v16, "object":Lcom/google/gson/JsonObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "newPolicyTypeName":Ljava/lang/String;
    .local v17, "newPolicyTypeName":Ljava/lang/String;
    const-string v3, "No policy for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "in rcspolicy.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    move-object/from16 v18, v7

    goto :goto_5

    .line 441
    .end local v16    # "object":Lcom/google/gson/JsonObject;
    .end local v17    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v0    # "object":Lcom/google/gson/JsonObject;
    .restart local v3    # "newPolicyTypeName":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v3    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v16    # "object":Lcom/google/gson/JsonObject;
    .restart local v17    # "newPolicyTypeName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v3, "rcs_as_policy"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 444
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .local v18, "defaultRcsElement":Lcom/google/gson/JsonElement;
    const-string/jumbo v7, "use RCS AS policy "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 445
    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 446
    .local v3, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "policyName":Ljava/lang/String;
    invoke-static {v14, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 449
    move-object v13, v3

    .line 450
    goto :goto_5

    .line 452
    .end local v3    # "elem":Lcom/google/gson/JsonElement;
    .end local v7    # "policyName":Ljava/lang/String;
    :cond_8
    goto :goto_4

    .line 441
    .end local v18    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .local v7, "defaultRcsElement":Lcom/google/gson/JsonElement;
    :cond_9
    move-object/from16 v18, v7

    .line 455
    .end local v7    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .restart local v18    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    :cond_a
    :goto_5
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v13, v0, :cond_b

    .line 456
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string v4, "No rcsAsPolicy in rcspolicy.json"

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 459
    :cond_b
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    invoke-static {v0, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    .line 461
    .local v0, "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isUp()Z

    move-result v3

    invoke-virtual {v0, v6, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;Z)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 462
    .local v3, "updatedParentPolicy":Lcom/google/gson/JsonElement;
    invoke-virtual {v0, v13, v14}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 463
    .local v4, "updatedAsPolicy":Lcom/google/gson/JsonElement;
    invoke-virtual {v0, v12, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 465
    .local v7, "updatedPolicy":Lcom/google/gson/JsonElement;
    invoke-static {v7}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 466
    iget-object v15, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move-object/from16 v19, v0

    .end local v0    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .local v19, "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    iget v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    move-object/from16 v20, v2

    .end local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .local v20, "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    .end local v6    # "parentPolicy":Lcom/google/gson/JsonElement;
    .local v21, "parentPolicy":Lcom/google/gson/JsonElement;
    const-string/jumbo v6, "policy updated: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 467
    invoke-static {v4}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 468
    invoke-static {v4, v7}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    move-object v7, v0

    .line 470
    :cond_c
    invoke-static {v3, v7}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    goto :goto_6

    .line 472
    .end local v19    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .end local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v21    # "parentPolicy":Lcom/google/gson/JsonElement;
    .restart local v0    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .restart local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v6    # "parentPolicy":Lcom/google/gson/JsonElement;
    :cond_d
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    .end local v0    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .end local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v6    # "parentPolicy":Lcom/google/gson/JsonElement;
    .restart local v19    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .restart local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v21    # "parentPolicy":Lcom/google/gson/JsonElement;
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "policy not valid "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " use updated default policy "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 474
    iput-object v3, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    .line 477
    :goto_6
    const/4 v0, 0x1

    return v0

    .line 413
    .end local v4    # "updatedAsPolicy":Lcom/google/gson/JsonElement;
    .end local v10    # "defaultRcsPolicyTag":Ljava/lang/String;
    .end local v11    # "imstrategyArray":Lcom/google/gson/JsonArray;
    .end local v12    # "currentPolicy":Lcom/google/gson/JsonElement;
    .end local v13    # "rcsAsPolicy":Lcom/google/gson/JsonElement;
    .end local v14    # "rcsAsPolicyName":Ljava/lang/String;
    .end local v16    # "object":Lcom/google/gson/JsonObject;
    .end local v17    # "newPolicyTypeName":Ljava/lang/String;
    .end local v18    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .end local v19    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .end local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v21    # "parentPolicy":Lcom/google/gson/JsonElement;
    .local v0, "object":Lcom/google/gson/JsonObject;
    .restart local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .local v3, "newPolicyTypeName":Ljava/lang/String;
    .local v7, "defaultRcsElement":Lcom/google/gson/JsonElement;
    :cond_e
    move-object/from16 v16, v0

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    .line 414
    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v3    # "newPolicyTypeName":Ljava/lang/String;
    .end local v7    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .restart local v16    # "object":Lcom/google/gson/JsonObject;
    .restart local v17    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v18    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .restart local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    :goto_7
    iget-object v0, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string v3, "load: No default_rcs_policy or default_up_policy. load failed"

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 415
    return v6

    .line 400
    .end local v8    # "defaultUpElement":Lcom/google/gson/JsonElement;
    .end local v9    # "element":Lcom/google/gson/JsonElement;
    .end local v16    # "object":Lcom/google/gson/JsonObject;
    .end local v17    # "newPolicyTypeName":Ljava/lang/String;
    .end local v18    # "defaultRcsElement":Lcom/google/gson/JsonElement;
    .end local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v3    # "newPolicyTypeName":Ljava/lang/String;
    .local v7, "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move-object v2, v0

    .end local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v3    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v17    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    if-eqz v7, :cond_f

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "currentPolicyName":Ljava/lang/String;
    .end local v17    # "newPolicyTypeName":Ljava/lang/String;
    .end local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/RcsPolicySettings;
    .end local p1    # "forceReload":Z
    :cond_f
    :goto_8
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 405
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "currentPolicyName":Ljava/lang/String;
    .restart local v17    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/RcsPolicySettings;
    .restart local p1    # "forceReload":Z
    :catch_1
    move-exception v0

    goto :goto_9

    .end local v17    # "newPolicyTypeName":Ljava/lang/String;
    .end local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .restart local v3    # "newPolicyTypeName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    .line 406
    .end local v2    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .end local v3    # "newPolicyTypeName":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "newPolicyTypeName":Ljava/lang/String;
    .restart local v20    # "newPolicyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 407
    return v6
.end method

.method public readBool(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 484
    .local v1, "policy":Lcom/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 491
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readBool:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v0

    .line 487
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readBool: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "ret":I
    iget-object v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 498
    .local v1, "policy":Lcom/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 505
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readInt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v0

    .line 501
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 510
    const-string v0, ""

    .line 511
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 512
    .local v1, "policy":Lcom/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 519
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-object v0

    .line 515
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-object v0
.end method

.method public readStringArray(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 526
    .local v1, "policy":Lcom/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "readStringArray: "

    if-eqz v2, :cond_0

    .line 527
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 529
    .local v4, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v4    # "element":Lcom/google/gson/JsonElement;
    goto :goto_0

    .line 533
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-object v0
.end method
