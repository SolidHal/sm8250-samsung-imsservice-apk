.class public Lcom/sec/internal/ims/servicemodules/ss/ResponseState;
.super Lcom/sec/internal/helper/State;
.source "ResponseState.java"


# instance fields
.field mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

.field private mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 1
    .param p1, "utStateMachine"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 23
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 24
    return-void
.end method

.method private cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Ljava/util/List;
    .locals 13
    .param p2, "cfRule"    # Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 261
    .local p1, "callForwardList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 262
    .local v0, "startCond":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 266
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 267
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEDIA = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, "tmpTarget":Ljava/lang/String;
    const/4 v6, -0x1

    .line 270
    .local v6, "tmpState":I
    const/4 v7, 0x1

    .line 272
    .local v7, "valid":Z
    move v8, v0

    .local v8, "cond":I
    :goto_1
    const/4 v9, 0x4

    if-ge v8, v9, :cond_7

    .line 273
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v9, v8, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p2

    .line 274
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GET RULE ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    iget-object v9, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 277
    const/4 v7, 0x0

    .line 278
    goto :goto_4

    .line 281
    :cond_1
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 282
    iget-object v9, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    move v6, v9

    goto :goto_2

    .line 283
    :cond_2
    iget-object v9, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eq v6, v9, :cond_3

    .line 284
    const/4 v7, 0x0

    .line 285
    goto :goto_4

    .line 288
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 289
    goto :goto_3

    .line 292
    :cond_4
    if-nez v5, :cond_5

    .line 293
    iget-object v9, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v5, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    .line 294
    :cond_5
    iget-object v9, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 295
    const/4 v7, 0x0

    .line 296
    goto :goto_4

    .line 272
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 300
    .end local v8    # "cond":I
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 301
    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v10, "This target number is valid for CF ALL."

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v8

    .line 303
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v5    # "tmpTarget":Ljava/lang/String;
    .end local v6    # "tmpState":I
    .end local v7    # "valid":Z
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 306
    :cond_9
    return-object p1
.end method

.method private cfInfoFromCache()V
    .locals 14

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "callForwardList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "cfRule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq v3, v5, :cond_8

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_4

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const-string v5, "] "

    const-string v6, "GET RULE ID ["

    if-eqz v3, :cond_3

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    array-length v7, v3

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_7

    aget-object v9, v3, v8

    .line 209
    .local v9, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_1

    .line 210
    goto :goto_1

    .line 212
    :cond_1
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v11, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 213
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 216
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v10

    .line 217
    .local v10, "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v7, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 222
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 225
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v3

    .line 226
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    array-length v7, v3

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_7

    aget-object v9, v3, v8

    .line 231
    .restart local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_5

    .line 232
    goto :goto_3

    .line 234
    :cond_5
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v11, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 235
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 238
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v10

    .line 239
    .restart local v10    # "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 245
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 246
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v7, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 247
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v3

    .line 250
    .restart local v3    # "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 195
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_8
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 198
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "There is no matched rule for CF ALL."

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 200
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v4, "serviceClass"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v4, "condition"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    .line 204
    return-void

    .line 254
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 255
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 256
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 257
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method private createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;
    .locals 12
    .param p1, "cbData"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "sibData":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 512
    .local v2, "tempRule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 513
    .local v3, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    const-string v5, "DBL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v4, "tempBundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 516
    .local v6, "bOneId":Ljava/lang/Boolean;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v7, "number":Ljava/lang/StringBuilder;
    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 518
    .local v9, "uri":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 519
    const-string v11, "$"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 522
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .end local v9    # "uri":Ljava/lang/String;
    goto :goto_1

    .line 524
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "number"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v8, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v9, "status"

    if-eqz v8, :cond_2

    .line 526
    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 528
    :cond_2
    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    :goto_2
    iget-object v5, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v8, "condition"

    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v2    # "tempRule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .end local v3    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .end local v4    # "tempBundle":Landroid/os/Bundle;
    .end local v6    # "bOneId":Ljava/lang/Boolean;
    .end local v7    # "number":Ljava/lang/StringBuilder;
    :cond_3
    goto/16 :goto_0

    .line 534
    :cond_4
    return-object v0
.end method

.method private getResultSuccess()V
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc9

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v3, 0x194

    const/16 v4, 0x74

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 86
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-eq v0, v4, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 92
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v5, 0x19c

    const/4 v6, -0x1

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_4

    .line 96
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUsm.mProfile.type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v5, 0x65

    if-eq v0, v5, :cond_3

    const/16 v5, 0x67

    if-eq v0, v5, :cond_3

    const/16 v5, 0x69

    if-eq v0, v5, :cond_3

    const/16 v5, 0x73

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 113
    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 107
    return-void

    .line 117
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 129
    :goto_1
    return-void

    .line 73
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responsePutResult(Z)V

    goto :goto_3

    .line 76
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetResult()V

    goto :goto_3

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 82
    :goto_3
    return-void
.end method

.method private makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;
    .locals 3
    .param p1, "cbRule"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v2, "status"

    if-eqz v1, :cond_0

    .line 588
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 590
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result v1

    const-string/jumbo v2, "serviceClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    return-object v0
.end method

.method private makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;
    .locals 7
    .param p1, "cfRule"    # Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 541
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 545
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v3, "condition"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 550
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string v3, "+"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "ToA"

    if-eqz v2, :cond_1

    .line 551
    const/16 v2, 0x91

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 553
    :cond_1
    const/16 v2, 0x81

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    :goto_1
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "tmpTarget":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 557
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "+65"

    if-nez v3, :cond_2

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 560
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 562
    :cond_3
    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE_QATAR:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 563
    const-string v3, "+974"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    :cond_4
    :goto_2
    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->removeUriPlusPrefix(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v2    # "tmpTarget":Ljava/lang/String;
    :cond_5
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result v2

    .line 569
    .local v2, "ssClass":I
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/16 v5, 0xff

    const-string/jumbo v6, "serviceClass"

    if-ne v0, v3, :cond_6

    if-ne v2, v5, :cond_6

    .line 570
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 571
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_7

    if-ne v2, v5, :cond_7

    .line 572
    const/16 v3, 0x31

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 575
    :cond_7
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-eqz v3, :cond_8

    .line 579
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    const-string v4, "NoReplyTimer"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    :cond_8
    return-object v1
.end method

.method private responseGetFromCache()V
    .locals 14

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    const/16 v2, 0x68

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    goto/16 :goto_8

    .line 316
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, "callBarringList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 318
    .local v1, "cbRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    const/4 v3, 0x0

    .line 320
    .local v3, "cbCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v2, :cond_1

    .line 321
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    goto :goto_0

    .line 323
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 326
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const/4 v5, 0x0

    const-string v6, "] "

    const-string v7, "GET RULE ID ["

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-nez v4, :cond_5

    .line 327
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    array-length v8, v4

    :goto_1
    if-ge v5, v8, :cond_4

    aget-object v9, v4, v5

    .line 328
    .local v9, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_2

    .line 329
    goto :goto_2

    .line 331
    :cond_2
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 332
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 335
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v10

    .line 336
    .local v10, "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 341
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 342
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 345
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v4

    .line 346
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_6

    .line 350
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v4, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 351
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v8, 0xa

    if-ne v4, v8, :cond_6

    .line 354
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 355
    :cond_6
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 356
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v4

    .line 357
    .restart local v4    # "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 361
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    array-length v8, v4

    :goto_4
    if-ge v5, v8, :cond_a

    aget-object v9, v4, v5

    .line 362
    .restart local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_8

    .line 363
    goto :goto_5

    .line 366
    :cond_8
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 367
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 370
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v10

    .line 371
    .restart local v10    # "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v9    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 379
    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v5, 0x1

    if-ne v4, v2, :cond_b

    .line 380
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    goto :goto_7

    .line 382
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v5, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 384
    :goto_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 385
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 386
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    goto :goto_8

    .line 312
    .end local v0    # "callBarringList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v1    # "cbRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .end local v3    # "cbCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfInfoFromCache()V

    .line 313
    nop

    .line 390
    :goto_8
    return-void
.end method

.method private responsePutResult(Z)V
    .locals 8
    .param p1, "success"    # Z

    .line 132
    if-nez p1, :cond_0

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "PUT Failed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x6d

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string/jumbo v5, "ss_clir_pref"

    invoke-virtual {v0, v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v0, v2, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 144
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v5

    .line 143
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    .line 152
    return-void

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    const/4 v4, 0x6

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    .line 157
    return-void

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    if-eqz v0, :cond_8

    .line 159
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsm.mProfile.condition : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v4, :cond_5

    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v3, 0x3f9

    const-wide/16 v4, 0x7ef4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v1, :cond_6

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 170
    return-void

    .line 161
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 179
    return-void

    .line 182
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    .line 187
    :goto_2
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 28
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 32
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseState::ProcessMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUsm.mIsSuspended "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 35
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    return v2

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    .line 42
    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    .line 61
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 63
    :cond_1
    return v2

    .line 45
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 46
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    const/16 v5, 0x3f7

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v2, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 51
    goto :goto_0

    .line 37
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 38
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->getResultSuccess()V

    .line 39
    goto :goto_0

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 57
    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 54
    nop

    .line 68
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public responseGetResult()V
    .locals 8

    .line 393
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    .line 395
    .local v0, "parse":Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Print Result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    const/16 v2, 0x66

    const/16 v5, 0x69

    const/16 v6, 0x67

    const/16 v7, 0x68

    if-eq v1, v2, :cond_a

    if-eq v1, v7, :cond_a

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_8

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_6

    const/16 v2, 0x72

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 479
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 481
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    if-ne v1, v7, :cond_1

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 483
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    goto :goto_0

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v6, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 486
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 493
    new-array v1, v3, [Landroid/os/Bundle;

    .line 494
    .local v1, "callBarringList":[Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    const/16 v3, 0xff

    const-string/jumbo v5, "serviceClass"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v5, "condition"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    aput-object v2, v1, v4

    .line 499
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 501
    .end local v1    # "callBarringList":[Landroid/os/Bundle;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    if-eqz v1, :cond_5

    .line 400
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x73

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 401
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    .line 402
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 404
    return-void

    .line 407
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v1

    .line 408
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    .line 409
    goto/16 :goto_3

    .line 461
    .end local v1    # "result":Z
    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 462
    .local v1, "clir":[I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseClir(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 463
    const/4 v2, 0x4

    aput v2, v1, v3

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    new-array v5, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 465
    aget v2, v1, v4

    if-eq v2, v3, :cond_7

    .line 466
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v5, "ss_clir_pref"

    invoke-virtual {v2, v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    .line 470
    :cond_7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v2, "clirData":Landroid/os/Bundle;
    const-string/jumbo v3, "queryClir"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 472
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    .line 473
    goto/16 :goto_3

    .line 453
    .end local v1    # "clir":[I
    .end local v2    # "clirData":Landroid/os/Bundle;
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 454
    goto :goto_2

    :cond_9
    move v3, v4

    :goto_2
    move v1, v3

    .line 455
    .local v1, "status":I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsSsInfo;-><init>(ILjava/lang/String;)V

    .line 456
    .local v2, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v3, "clipData":Landroid/os/Bundle;
    const-string v4, "imsSsInfo"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 458
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    .line 459
    goto/16 :goto_3

    .line 426
    .end local v1    # "status":I
    .end local v2    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "clipData":Landroid/os/Bundle;
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    .line 428
    .local v1, "cbData":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v2, v7, :cond_b

    .line 429
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 430
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v2, :cond_c

    .line 431
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v5, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 433
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 434
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 435
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 436
    return-void

    .line 439
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 440
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v2, :cond_c

    .line 441
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v6, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 442
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 443
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 444
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 445
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 446
    return-void

    .line 449
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    .line 451
    goto :goto_3

    .line 411
    .end local v1    # "cbData":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallForwarding(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v1

    .line 412
    .local v1, "cfData":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-object v1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 414
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v2, :cond_e

    .line 415
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v5, 0x65

    iput v5, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 416
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 418
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 419
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 420
    return-void

    .line 422
    :cond_e
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    .line 423
    nop

    .line 507
    .end local v1    # "cfData":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    :goto_3
    return-void
.end method
