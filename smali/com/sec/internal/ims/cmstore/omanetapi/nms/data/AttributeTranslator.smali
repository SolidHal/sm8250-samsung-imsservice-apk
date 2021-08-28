.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# instance fields
.field private mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "iClouldMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 24
    .local v0, "list":[Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 25
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/AttributeList;-><init>()V

    .line 26
    .local v1, "attrList":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 27
    return-object v1
.end method

.method public setBCC([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 100
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 101
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public setCC([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 119
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 120
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public setClientCorrelator([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CLIENT$CORRELATOR"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 271
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 272
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public setContentDuration([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$DURATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 487
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 488
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 490
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method public setContentType([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 289
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 290
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public setConversationId([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 308
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 309
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public setCpmGroup([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$CPM$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 252
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 253
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public setDate([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 43
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 44
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public setDirection([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 138
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 139
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public setDispositionOriginalMessageID([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 367
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 368
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public setDispositionOriginalTo([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 387
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 388
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public setDispositionStatus([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 328
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 329
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 331
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public setDispositionType([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 347
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 348
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 350
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method public setEmailAddress([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EMAILADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 507
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 508
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public setFrom([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 62
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 63
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public setGreetingType([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 467
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 468
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 470
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public setMessageContext([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 157
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 158
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public setMessageId([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 214
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 215
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public setMimeVersion([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MIME$VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 233
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 234
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public setOldPwd([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$OLD$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 447
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 448
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 450
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public setOpenGroup([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$OPEN$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 195
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 196
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public setPwd([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 427
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 428
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 430
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public setReportRequested([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$REPORT$REQUESTED"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 407
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 408
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 410
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public setSubject([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 176
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 177
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public setTo([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 81
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 82
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public setVVMOn([Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # [Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$VVMOn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 526
    .local v1, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 527
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 529
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method
