.class public Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;
.super Ljava/lang/Object;
.source "EucTestEventsFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;


# static fields
.field private static final LOG_MSG_INVALID_INTENT:Ljava/lang/String; = "Invalid intent, ignoring! "

.field private static final LOG_MSG_NO_EXTRAS:Ljava/lang/String; = "Missing extras in the intent!"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

.field private final mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

.field private final mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field private final mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 73
    new-instance v0, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {v0}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    .line 74
    new-instance v0, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {v0}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {v0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    .line 76
    new-instance v0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {v0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    .line 77
    new-instance v0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {v0}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    .line 78
    return-void
.end method

.method private buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 12
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 245
    const-string v0, "handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "handle":I
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 247
    .local v1, "idOffset":I
    nop

    .line 248
    const-string/jumbo v2, "remote_uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 249
    .local v9, "remoteUriOffset":I
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v10

    .line 251
    .local v10, "timestamp":J
    int-to-long v3, v0

    move-object v2, p1

    move v5, v1

    move v6, v9

    move-wide v7, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->createBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;JIIJ)I

    move-result v2

    return v2
.end method

.method private buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 9
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 255
    const-string/jumbo v0, "text_list"

    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "textLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "text_lang_list"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 261
    :cond_0
    const-string/jumbo v2, "subject_list"

    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, "subjectLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "subject_lang_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-direct {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 267
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "buildEucContent, texts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v4

    .line 269
    .local v4, "textOffsets":[I
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v6, "buildEucContent, subjects"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v5

    .line 272
    .local v5, "subjectOffsets":[I
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createTextsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 273
    .local v6, "textsVectorOffset":I
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createSubjectsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 275
    .local v7, "subjectsVectorOffset":I
    invoke-static {p1, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;II)I

    move-result v8

    return v8
.end method

.method private buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 22
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildRequestMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v1, "pin_indication"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 310
    .local v10, "pin":Z
    const-string v1, "external_eucr"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 312
    .local v11, "externalEucr":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "acceptButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "accept_button_list"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    .line 313
    :cond_0
    move-object v12, v1

    .line 317
    .end local v1    # "acceptButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "acceptButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "acceptButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "accept_button_lang_list"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    goto :goto_1

    .line 318
    :cond_1
    move-object v13, v1

    .line 322
    .end local v1    # "acceptButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "acceptButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v1, "rejectButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "reject_button_list"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    .line 323
    :cond_2
    move-object v14, v1

    .line 327
    .end local v1    # "rejectButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "rejectButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, "rejectButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "reject_button_lang_list"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    goto :goto_3

    .line 328
    :cond_3
    move-object v15, v1

    .line 332
    .end local v1    # "rejectButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "rejectButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-direct/range {p0 .. p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v16

    .line 333
    .local v16, "baseMessageOffset":I
    invoke-direct/range {p0 .. p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v17

    .line 335
    .local v17, "contentOffset":I
    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 336
    .local v2, "acceptButtonOffsets":[I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 337
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v4, "buildRequestMessage, acceptButtons"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {v0, v8, v12, v13}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v2

    move-object v7, v2

    goto :goto_4

    .line 336
    :cond_4
    move-object v7, v2

    .line 340
    .end local v2    # "acceptButtonOffsets":[I
    .local v7, "acceptButtonOffsets":[I
    :goto_4
    invoke-static {v8, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createAcceptButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v18

    .line 343
    .local v18, "acceptButtonsVectorOffset":I
    new-array v1, v1, [I

    .line 344
    .local v1, "rejectButtonOffsets":[I
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 345
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildRequestMessage, rejectButtons"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {v0, v8, v14, v15}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    .line 344
    :cond_5
    move-object v6, v1

    .line 348
    .end local v1    # "rejectButtonOffsets":[I
    .local v6, "rejectButtonOffsets":[I
    :goto_5
    invoke-static {v8, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createRejectButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v19

    .line 351
    .local v19, "rejectButtonsVectorOffset":I
    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v20, v6

    .end local v6    # "rejectButtonOffsets":[I
    .local v20, "rejectButtonOffsets":[I
    move v6, v10

    move-object/from16 v21, v7

    .end local v7    # "acceptButtonOffsets":[I
    .local v21, "acceptButtonOffsets":[I
    move v7, v11

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIZZ)I

    move-result v1

    return v1
.end method

.method private buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I
    .locals 5
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 282
    .local p2, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "lang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "If more than one element is presented a language (lang) attribute must be present with the two letter language codes according to the ISO 639-1"

    invoke-static {v0, v3}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    new-array v0, v2, [I

    .line 288
    .local v0, "result":[I
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 289
    .local v2, "textOffset":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->startTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 290
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 291
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->endTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    aput v3, v0, v1

    .line 292
    .end local v2    # "textOffset":I
    goto :goto_2

    .line 293
    .end local v0    # "result":[I
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Text and language size does not match"

    invoke-static {v1, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 296
    .restart local v0    # "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 297
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 298
    .restart local v2    # "textOffset":I
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 299
    .local v3, "langOffset":I
    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->createTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;II)I

    move-result v4

    aput v4, v0, v1

    .line 296
    .end local v2    # "textOffset":I
    .end local v3    # "langOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-object v0
.end method

.method private checkNoBaseExtras(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 441
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    const-string/jumbo v0, "remote_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 441
    :goto_1
    return v0
.end method

.method private checkNoEucDataExtras(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 471
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    const-string/jumbo v0, "remote_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 471
    :goto_1
    return v0
.end method

.method private checkNoSystemRequestExtras(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 450
    const-string/jumbo v0, "system_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "system_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private checkNoUserConsentExtras(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 460
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string/jumbo v0, "subscriber_identity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 460
    :goto_1
    return v0
.end method

.method private getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    const-string v0, "extras is null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "key is null"

    invoke-static {p2, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 405
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 408
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 411
    .end local v1    # "array":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getTimestamp(Landroid/os/Bundle;)J
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 395
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 396
    .local v0, "timestampFromExtras":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method private logInvalidIntent(Lcom/sec/internal/helper/translate/TranslationException;)V
    .locals 3
    .param p1, "e"    # Lcom/sec/internal/helper/translate/TranslationException;

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent, ignoring! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private logNoExtras()V
    .locals 2

    .line 432
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid intent, ignoring! Missing extras in the intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 476
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sec/internal/ims/translate/TypeTranslator<",
            "TT;TS;>;)TS;"
        }
    .end annotation

    .line 416
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "translator":Lcom/sec/internal/ims/translate/TypeTranslator;, "Lcom/sec/internal/ims/translate/TypeTranslator<TT;TS;>;"
    const/4 v0, 0x0

    .line 419
    .local v0, "request":Ljava/lang/Object;, "TS;"
    :try_start_0
    invoke-interface {p2, p1}, Lcom/sec/internal/ims/translate/TypeTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Lcom/sec/internal/helper/translate/TranslationException;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logInvalidIntent(Lcom/sec/internal/helper/translate/TranslationException;)V

    .line 424
    .end local v1    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public createAcknowledgement(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createAcknowledgement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    const-string v1, "ack_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "status":Ljava/lang/String;
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 137
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v3

    .line 138
    .local v3, "baseMessageOffset":I
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v4

    .line 140
    .local v4, "contentOffset":I
    const/4 v5, 0x1

    .line 141
    .local v5, "ackStatus":I
    const-string v6, "ok"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v7, "createAcknowledgement, status ok"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v5, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const-string v6, "error"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v7, "createAcknowledgement, status error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v7, "createAcknowledgement, unrecognized status, assuming error!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->createAckMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result v6

    .line 152
    .local v6, "ackMessageOffset":I
    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 153
    invoke-virtual {v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->getRootAsAckMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    move-result-object v7

    .line 155
    .local v7, "ackMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    return-object v8

    .line 130
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v3    # "baseMessageOffset":I
    .end local v4    # "contentOffset":I
    .end local v5    # "ackStatus":I
    .end local v6    # "ackMessageOffset":I
    .end local v7    # "ackMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 131
    const/4 v1, 0x0

    return-object v1
.end method

.method public createEucData(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .line 358
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createEucData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 361
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoEucDataExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 366
    :cond_0
    const-string v0, "handle"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 369
    .local v4, "handle":I
    :try_start_0
    invoke-static {v4}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .local v0, "ownIdentity":Ljava/lang/String;
    nop

    .line 374
    const-string/jumbo v5, "remote_uri"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 375
    .local v5, "remoteUri":Lcom/sec/ims/util/ImsUri;
    if-nez v5, :cond_1

    .line 376
    return-object v3

    .line 379
    :cond_1
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v6, "timeout"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 382
    .local v6, "timeout":J
    new-instance v9, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 383
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-nez v8, :cond_2

    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    :goto_0
    invoke-direct {v9, v3, v0, v8, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 384
    .local v9, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    const-string/jumbo v8, "user_pin"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 385
    .local v17, "pin":Ljava/lang/String;
    const-string v8, "external_eucr"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 386
    .local v18, "isExternal":Z
    const-string/jumbo v8, "user_accept"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 387
    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    :goto_1
    move-object v13, v8

    .line 388
    .local v13, "state":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v19

    .line 390
    .local v19, "timestamp":J
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    if-eqz v17, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 391
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 390
    move-object/from16 v11, v17

    move/from16 v12, v18

    move-wide/from16 v14, v19

    invoke-interface/range {v8 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v8

    return-object v8

    .line 370
    .end local v0    # "ownIdentity":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "remoteUri":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "timeout":J
    .end local v9    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .end local v13    # "state":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .end local v17    # "pin":Ljava/lang/String;
    .end local v18    # "isExternal":Z
    .end local v19    # "timestamp":J
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 371
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    return-object v3

    .line 362
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    .end local v4    # "handle":I
    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 363
    return-object v3
.end method

.method public createNotification(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "okButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "ok_button_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 173
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, "okButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ok_button_lang_list"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 178
    :cond_2
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 179
    .local v3, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v5

    .line 180
    .local v5, "baseOffset":I
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v6

    .line 182
    .local v6, "contentOffset":I
    new-array v4, v4, [I

    .line 183
    .local v4, "okButtonOffsets":[I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 184
    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v8, "createNotification, okButtons"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v4

    .line 187
    :cond_3
    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->createOkButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 190
    .local v7, "okButtonsVectorOffset":I
    invoke-static {v3, v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->createNotificationMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result v8

    .line 192
    .local v8, "notificationMessageOffset":I
    invoke-virtual {v3, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 193
    nop

    .line 194
    invoke-virtual {v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 193
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->getRootAsNotificationMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    move-result-object v9

    .line 196
    .local v9, "notificationMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {p0, v9, v10}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    return-object v10

    .line 164
    .end local v1    # "okButton":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "okButtonLang":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v4    # "okButtonOffsets":[I
    .end local v5    # "baseOffset":I
    .end local v6    # "contentOffset":I
    .end local v7    # "okButtonsVectorOffset":I
    .end local v8    # "notificationMessageOffset":I
    .end local v9    # "notificationMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 165
    const/4 v1, 0x0

    return-object v1
.end method

.method public createPersistent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createPersistent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 91
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v2

    .line 92
    .local v2, "requestMessageOffset":I
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;->createPersistentMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)I

    move-result v3

    .line 94
    .local v3, "persistentMessageOffset":I
    invoke-virtual {v1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 95
    nop

    .line 96
    invoke-virtual {v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;->getRootAsPersistentMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    move-result-object v4

    .line 98
    .local v4, "persistentMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    return-object v5

    .line 86
    .end local v1    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v2    # "requestMessageOffset":I
    .end local v3    # "persistentMessageOffset":I
    .end local v4    # "persistentMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 87
    const/4 v1, 0x0

    return-object v1
.end method

.method public createSystemRequest(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 201
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createSystemRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoSystemRequestExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const-string/jumbo v1, "system_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "system_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "data":Ljava/lang/String;
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 213
    .local v3, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 214
    .local v4, "typeOffset":I
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 215
    .local v5, "dataOffset":I
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v6

    .line 217
    .local v6, "baseOffset":I
    invoke-static {v3, v6, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->createSystemMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result v7

    .line 219
    .local v7, "systemMessageOffset":I
    invoke-virtual {v3, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 220
    invoke-virtual {v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->getRootAsSystemMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    move-result-object v8

    .line 222
    .local v8, "systemMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {p0, v8, v9}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    return-object v9

    .line 205
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v4    # "typeOffset":I
    .end local v5    # "dataOffset":I
    .end local v6    # "baseOffset":I
    .end local v7    # "systemMessageOffset":I
    .end local v8    # "systemMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 206
    const/4 v1, 0x0

    return-object v1
.end method

.method public createUserConsent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createUserConsent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoUserConsentExtras(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "title":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "message":Ljava/lang/String;
    const-string/jumbo v3, "user_accept"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 238
    .local v11, "userAccept":Z
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v12

    .line 239
    .local v12, "timestamp":J
    const-string/jumbo v3, "subscriber_identity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, "ownIdentity":Ljava/lang/String;
    new-instance v15, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    move-object v3, v15

    move-wide v4, v12

    move v6, v11

    move-object v7, v2

    move-object v8, v10

    move-object v9, v14

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    .line 231
    .end local v2    # "title":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "userAccept":Z
    .end local v12    # "timestamp":J
    .end local v14    # "ownIdentity":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 232
    const/4 v2, 0x0

    return-object v2
.end method

.method public createVolatile(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createVolatile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_0
    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 113
    .local v1, "timeout":J
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 114
    .local v3, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v4

    .line 115
    .local v4, "requestMessageOffset":I
    invoke-static {v3, v4, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;->createVolatileMessage(Lcom/google/flatbuffers/FlatBufferBuilder;IJ)I

    move-result v5

    .line 117
    .local v5, "volatileMessageOffset":I
    invoke-virtual {v3, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 118
    nop

    .line 119
    invoke-virtual {v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 118
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;->getRootAsVolatileMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    move-result-object v6

    .line 121
    .local v6, "volatileMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    return-object v7
.end method
