.class public Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;
.super Ljava/lang/Object;
.source "AcknowledgementMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    .locals 11
    .param p1, "value"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 41
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 46
    new-instance v0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;)V

    .line 47
    .local v0, "collector":Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 48
    .local v1, "fromHeader":Lcom/sec/ims/util/ImsUri;
    nop

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 48
    invoke-static {v2}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "ownIdentity":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v9

    .line 52
    .local v9, "eucContent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 53
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->texts(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v3

    .line 54
    .local v3, "text":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v10

    if-ne v10, v5, :cond_0

    move v4, v5

    .line 55
    :cond_0
    invoke-static {v6, v7, v4}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v3    # "text":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 62
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjects(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v3

    .line 63
    .local v3, "subject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v3, :cond_4

    .line 64
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v10

    if-ne v10, v5, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v4

    .line 64
    :goto_2
    invoke-static {v6, v7, v10}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->addSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v3    # "subject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->prepareMessageData()V

    .line 72
    invoke-virtual {v0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 78
    new-instance v10, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    return-object v10

    .line 73
    :cond_6
    new-instance v2, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v3, "AcknowledgementMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!"

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 42
    .end local v0    # "collector":Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;
    .end local v1    # "fromHeader":Lcom/sec/ims/util/ImsUri;
    .end local v8    # "ownIdentity":Ljava/lang/String;
    .end local v9    # "eucContent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;
    :cond_7
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "AcknowledgementMessageTranslator, incomplete or null message data!"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object p1

    return-object p1
.end method
