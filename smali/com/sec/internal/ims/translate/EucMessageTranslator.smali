.class Lcom/sec/internal/ims/translate/EucMessageTranslator;
.super Ljava/lang/Object;
.source "EucMessageTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 15
    .param p1, "value"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;
    .param p2, "timeout"    # Ljava/lang/Long;
    .param p3, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 41
    move-object/from16 v8, p1

    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 46
    new-instance v0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    const/4 v1, 0x0

    move-object v9, p0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$1;)V

    move-object v10, v0

    .line 47
    .local v10, "collector":Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    .line 48
    .local v11, "fromHeader":Lcom/sec/ims/util/ImsUri;
    nop

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, "ownIdentity":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v13

    .line 52
    .local v13, "content":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->texts(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v1

    .line 54
    .local v1, "text":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v6

    if-ne v6, v3, :cond_0

    move v2, v3

    .line 55
    :cond_0
    invoke-static {v4, v5, v2}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "text":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 62
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjects(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v1

    .line 63
    .local v1, "subject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v6

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    .line 64
    :goto_2
    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v1    # "subject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtonsLength()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 71
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtons(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v1

    .line 72
    .local v1, "accept":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v1, :cond_7

    .line 73
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtonsLength()I

    move-result v6

    if-ne v6, v3, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, v2

    .line 73
    :goto_4
    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addAcceptButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "accept":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 79
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtonsLength()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 80
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtons(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v1

    .line 81
    .local v1, "reject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    if-eqz v1, :cond_a

    .line 82
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtonsLength()I

    move-result v6

    if-ne v6, v3, :cond_9

    move v6, v3

    goto :goto_6

    :cond_9
    move v6, v2

    .line 82
    :goto_6
    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addRejectButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v1    # "reject":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 88
    .end local v0    # "i":I
    :cond_b
    invoke-virtual {v10}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->prepareMessageData()V

    .line 90
    invoke-virtual {v10}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 96
    new-instance v14, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)V

    return-object v14

    .line 91
    :cond_c
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "EucMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 41
    .end local v10    # "collector":Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;
    .end local v11    # "fromHeader":Lcom/sec/ims/util/ImsUri;
    .end local v12    # "ownIdentity":Ljava/lang/String;
    .end local v13    # "content":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;
    :cond_d
    move-object v9, p0

    .line 42
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "EucMessageTranslator, incomplete or null message data!"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
