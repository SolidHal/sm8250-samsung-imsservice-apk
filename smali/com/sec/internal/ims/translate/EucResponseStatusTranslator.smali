.class public Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;
.super Ljava/lang/Object;
.source "EucResponseStatusTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    .locals 14
    .param p1, "eucSendResponseResponse"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->id()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "responseId":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->handle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v7

    .line 46
    .local v7, "handle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->status()I

    move-result v8

    .line 48
    .local v8, "status":I
    const/4 v0, 0x1

    if-eqz v8, :cond_2

    if-eq v8, v0, :cond_1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_0

    .line 53
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_NETWORK:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    .line 54
    .local v1, "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    move-object v9, v1

    goto :goto_0

    .line 59
    .end local v1    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 56
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    .line 57
    .restart local v1    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    move-object v9, v1

    goto :goto_0

    .line 50
    .end local v1    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->SUCCESS:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    .line 51
    .restart local v1    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    move-object v9, v1

    .line 63
    .end local v1    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .local v9, "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->type()I

    move-result v10

    .line 64
    .local v10, "type":I
    if-eqz v10, :cond_4

    if-ne v10, v0, :cond_3

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 70
    .local v0, "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    move-object v11, v0

    goto :goto_1

    .line 72
    .end local v0    # "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unknown or unsupported type of the original EUCR message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 67
    .restart local v0    # "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    move-object v11, v0

    .line 76
    .end local v0    # "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .local v11, "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    :goto_1
    invoke-static {v7}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "ownIdentity":Ljava/lang/String;
    new-instance v13, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 79
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;->remoteUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    move-object v0, v13

    move-object v1, v6

    move-object v2, v11

    move-object v4, v12

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;)V

    .line 78
    return-object v13

    .line 43
    .end local v7    # "handle":I
    .end local v8    # "status":I
    .end local v9    # "moduleStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .end local v10    # "type":I
    .end local v11    # "originalEucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .end local v12    # "ownIdentity":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "ID of EUC related to response is null!"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    move-result-object p1

    return-object p1
.end method
