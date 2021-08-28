.class public Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;
.super Ljava/lang/Object;
.source "SystemRequestMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MapTranslator<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "translatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    const-string/jumbo v2, "urn:gsma:rcs:http-configuration:reconfigure"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/sec/internal/helper/translate/MapTranslator;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/translate/MapTranslator;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    .line 42
    return-void
.end method

.method private getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 1
    .param p1, "value"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    .line 118
    new-instance v0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;-><init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)V

    return-object v0
.end method

.method private getDataAsOptional(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 2
    .param p1, "value"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "data":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->data()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "requestData":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    .locals 14
    .param p1, "value"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v0

    .line 51
    .local v0, "defaultData":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getDataAsOptional(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object v9

    .line 52
    .local v9, "optionalData":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 53
    .local v10, "fromHeader":Lcom/sec/ims/util/ImsUri;
    nop

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "ownIdentity":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->mEUCSystemRequestTypeTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->type()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/translate/MapTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    .line 59
    .local v12, "type":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
    new-instance v13, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;)V

    return-object v13
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object p1

    return-object p1
.end method
