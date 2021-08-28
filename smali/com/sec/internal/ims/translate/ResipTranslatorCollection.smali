.class public Lcom/sec/internal/ims/translate/ResipTranslatorCollection;
.super Ljava/lang/Object;
.source "ResipTranslatorCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipTranslatorCollection"

.field private static final mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MapTranslator<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/sec/internal/helper/translate/MapTranslator;

    new-instance v1, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/MapTranslator;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 504
    const-string v0, "ResipTranslatorCollection"

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    const-string v1, "UTF-8"

    .line 510
    .local v1, "charSet":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    const-string v2, "charset="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 513
    aget-object v3, v2, v4

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustMessageBody(): charset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 520
    .local v2, "adjustedBody":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v3

    .line 522
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v3

    .line 521
    invoke-static {v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 523
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const/4 v4, 0x1

    .line 524
    .local v4, "replaceSpecialCharacter":Z
    if-eqz v3, :cond_2

    .line 525
    const-string/jumbo v5, "replace_specialcharacter"

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    .line 527
    :cond_2
    if-eqz v4, :cond_3

    .line 528
    const/16 v5, 0xa4

    const/16 v6, 0x20ac

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 532
    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v4    # "replaceSpecialCharacter":Z
    :cond_3
    goto :goto_0

    .line 530
    :catch_0
    move-exception v3

    .line 531
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "adjustMessageBody(): unsupported charset!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v2

    .line 505
    .end local v1    # "charSet":Ljava/lang/String;
    .end local v2    # "adjustedBody":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v1, "adjustMessageBody(): invalid data, skip the message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I
    .locals 4
    .param p0, "warningHdr"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 401
    const/4 v0, -0x1

    .line 402
    .local v0, "warningCode":I
    if-eqz p0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->code()I

    move-result v0

    .line 405
    const/16 v1, 0x18f

    if-ne v0, v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "warningStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 408
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "text":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 417
    .end local v1    # "warningStr":Ljava/lang/String;
    .end local v2    # "text":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return v0
.end method

.method public static translateAcceptContent(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateAcceptContent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->mAcceptContentTranslator:Lcom/sec/internal/helper/translate/MapTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MapTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object v0
.end method

.method public static translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3
    .param p0, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .param p1, "hdr"    # Ljava/lang/Object;

    .line 363
    if-nez p0, :cond_0

    .line 364
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 367
    .local v0, "errorType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateFtError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 369
    instance-of v1, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    return-object v1

    .line 371
    :cond_2
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    return-object v1
.end method

.method public static translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .locals 2
    .param p0, "state"    # I

    .line 422
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 432
    const-string v0, "ResipTranslatorCollection"

    const-string/jumbo v1, "translateFtProgressState(): unsupported state! Use TRANSFERRING instead!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0

    .line 430
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0

    .line 428
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0

    .line 426
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0

    .line 424
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0
.end method

.method public static translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 2
    .param p0, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .param p1, "hdr"    # Ljava/lang/Object;

    .line 357
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 358
    .local v0, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    return-object v1
.end method

.method public static translateFtSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3
    .param p0, "reasonHdr"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 375
    const/4 v0, -0x1

    .line 376
    .local v0, "causeCode":I
    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v1

    long-to-int v0, v1

    .line 379
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateFtSessionReleaseError: cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x198

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25b

    if-eq v0, v1, :cond_4

    .line 391
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 389
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 387
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 385
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 383
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1
.end method

.method public static translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;
    .locals 5
    .param p0, "extension"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->sipExtensions()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;

    move-result-object v1

    .line 542
    .local v1, "extraHeader":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pairLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 543
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImExtension Header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    const-string v4, "ResipTranslatorCollection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->pair(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v1    # "extraHeader":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static translateFwImdnNoti(Ljava/util/Set;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)[I"
        }
    .end annotation

    .line 468
    .local p0, "notifications":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateFwImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .local v0, "result":[I
    const/4 v1, 0x0

    .line 472
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 473
    .local v3, "noti":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    sget-object v4, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput v5, v0, v1

    .line 485
    move v1, v4

    goto :goto_1

    .line 481
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput v6, v0, v1

    .line 482
    move v1, v4

    goto :goto_1

    .line 478
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput v5, v0, v1

    .line 479
    move v1, v4

    goto :goto_1

    .line 475
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    const/4 v5, 0x0

    aput v5, v0, v1

    .line 476
    move v1, v4

    .line 489
    .end local v3    # "noti":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :goto_1
    goto :goto_0

    .line 490
    :cond_4
    return-object v0
.end method

.method public static translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;
    .locals 4
    .param p0, "state"    # Ljava/lang/String;

    .line 626
    if-nez p0, :cond_0

    .line 627
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object v0

    .line 629
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2f43367f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x5c6a3019

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "deleted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "partial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 635
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object v0

    .line 633
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object v0

    .line 631
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    return-object v0
.end method

.method public static translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 4
    .param p0, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .param p1, "hdr"    # Ljava/lang/Object;

    .line 151
    if-nez p0, :cond_0

    .line 152
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v0

    .line 155
    .local v0, "errorType":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result v1

    .line 156
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateImError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipTranslatorCollection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 179
    :pswitch_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 161
    :pswitch_2
    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    return-object v2

    .line 177
    :pswitch_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 175
    :pswitch_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 173
    :pswitch_5
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 171
    :pswitch_6
    instance-of v3, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 170
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    return-object v2

    .line 168
    :pswitch_7
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 166
    :pswitch_8
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    return-object v2

    .line 163
    :pswitch_9
    nop

    .line 164
    instance-of v3, p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 163
    :cond_2
    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    return-object v2

    .line 159
    :pswitch_a
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 2
    .param p0, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .param p1, "hdr"    # Ljava/lang/Object;

    .line 144
    invoke-static {p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 145
    .local v0, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    return-object v1
.end method

.method public static translateImSessionReleaseError(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 4
    .param p0, "reasonHdr"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 325
    const/4 v0, -0x1

    .line 326
    .local v0, "causeCode":I
    const-string v1, ""

    .line 327
    .local v1, "causeText":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v2

    long-to-int v0, v2

    .line 329
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateImSessionReleaseError: cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", causeText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipTranslatorCollection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x198

    if-eq v0, v2, :cond_3

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1e0

    if-eq v0, v2, :cond_1

    .line 351
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 337
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_BEARER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 335
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 339
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 341
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 342
    const-string v3, "check_byecause"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const-string v2, "Booted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_PARTY_BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 345
    :cond_5
    const-string v2, "Call Completed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_CALL_COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2

    .line 349
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v2
.end method

.method public static translateMSRPError(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 2
    .param p0, "errorCode"    # I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateMSRPError: MSRP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v0, 0x190

    if-eq p0, v0, :cond_9

    const/16 v0, 0x193

    if-eq p0, v0, :cond_8

    const/16 v0, 0x198

    if-eq p0, v0, :cond_7

    const/16 v0, 0x19d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x19f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1fa

    if-eq p0, v0, :cond_0

    .line 320
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 318
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 316
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 314
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 312
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 310
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 308
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 306
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 304
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 302
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0

    .line 300
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0
.end method

.method public static translateResult(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .locals 13
    .param p0, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p1, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;
    .param p2, "hdr"    # Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v7

    .line 73
    .local v7, "type":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    const/4 v0, 0x0

    .line 74
    .local v0, "sipResponse":Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    const/4 v1, 0x0

    .line 75
    .local v1, "msrpResponse":Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    const/4 v2, 0x0

    .line 76
    .local v2, "warningHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    const/4 v3, 0x0

    .line 78
    .local v3, "reasonHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    if-eqz p1, :cond_2

    .line 79
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v7, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v7, v4, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-ne v7, v4, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v1

    move-object v8, v0

    move-object v9, v1

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorCode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    goto :goto_1

    .line 85
    :cond_2
    move-object v8, v0

    move-object v9, v1

    .end local v0    # "sipResponse":Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .end local v1    # "msrpResponse":Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .local v8, "sipResponse":Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .local v9, "msrpResponse":Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    :goto_1
    if-eqz p2, :cond_4

    .line 86
    instance-of v0, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    if-eqz v0, :cond_3

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 88
    .local v0, "warningHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 89
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;-><init>(ILjava/lang/String;)V

    move-object v2, v1

    .line 90
    .end local v0    # "warningHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;
    move-object v10, v2

    move-object v11, v3

    goto :goto_2

    :cond_3
    instance-of v0, p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    if-eqz v0, :cond_4

    .line 91
    move-object v0, p2

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    .line 92
    .local v0, "reasonHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 93
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->code()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;-><init>(ILjava/lang/String;)V

    move-object v3, v1

    move-object v10, v2

    move-object v11, v3

    goto :goto_2

    .line 96
    .end local v0    # "reasonHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;
    :cond_4
    move-object v10, v2

    move-object v11, v3

    .end local v2    # "warningHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .end local v3    # "reasonHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    .local v10, "warningHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .local v11, "reasonHeader":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    :goto_2
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-object v12
.end method

.method private static translateResultType(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 2
    .param p0, "error"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    .line 100
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 101
    .local v0, "type":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;->errorType()I

    move-result v1

    .line 103
    .local v1, "errorType":I
    packed-switch v1, :pswitch_data_0

    .line 135
    :pswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 133
    goto :goto_0

    .line 108
    :pswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 109
    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 130
    goto :goto_0

    .line 126
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 127
    goto :goto_0

    .line 123
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 124
    goto :goto_0

    .line 120
    :pswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 121
    goto :goto_0

    .line 117
    :pswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 118
    goto :goto_0

    .line 114
    :pswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 115
    goto :goto_0

    .line 111
    :pswitch_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 112
    goto :goto_0

    .line 105
    :pswitch_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 139
    .end local v1    # "errorType":I
    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "warningHdr"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    .line 187
    invoke-static {p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->getWarningCode(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)I

    move-result v0

    .line 188
    .local v0, "warningCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateSIPError: SIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "warningCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipTranslatorCollection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v1, 0xb4

    if-eq p0, v1, :cond_14

    const/16 v1, 0xb5

    if-eq p0, v1, :cond_13

    const/16 v1, 0x1a4

    if-eq p0, v1, :cond_12

    const/16 v1, 0x1a5

    if-eq p0, v1, :cond_11

    const/16 v1, 0x1ed

    if-eq p0, v1, :cond_10

    const/16 v1, 0x1ee

    if-eq p0, v1, :cond_f

    const/16 v1, 0x25b

    if-eq p0, v1, :cond_e

    const/16 v1, 0x25c

    if-eq p0, v1, :cond_d

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    const/16 v1, 0x7b

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 292
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 283
    :pswitch_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SIP_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 282
    :pswitch_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 281
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 280
    :pswitch_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 279
    :pswitch_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_IMPLEMENTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 278
    :pswitch_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 274
    :pswitch_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 273
    :pswitch_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 266
    :pswitch_8
    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 270
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 268
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 264
    :pswitch_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->AMBIGUOUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 263
    :pswitch_a
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ADDRESS_INCOMPLETE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 262
    :pswitch_b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 261
    :pswitch_c
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 254
    :pswitch_d
    if-eq v0, v1, :cond_1

    .line 258
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 256
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 252
    :pswitch_e
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 248
    :pswitch_f
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 247
    :pswitch_10
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 246
    :pswitch_11
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_URI_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 245
    :pswitch_12
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 242
    :pswitch_13
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 241
    :pswitch_14
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 234
    :pswitch_15
    if-eq v0, v1, :cond_2

    .line 238
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 236
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 202
    :pswitch_16
    const/16 v2, 0x69

    if-eq v0, v2, :cond_c

    const/16 v2, 0x77

    if-eq v0, v2, :cond_b

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_a

    const/16 v2, 0x81

    if-eq v0, v2, :cond_9

    const/16 v2, 0x17d

    if-eq v0, v2, :cond_8

    const/16 v2, 0x1e8

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x84

    if-eq v0, v1, :cond_4

    const/16 v1, 0x85

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_5

    .line 230
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 224
    :pswitch_17
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SPAM_SENDER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 222
    :pswitch_18
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 220
    :pswitch_19
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_TOKEN_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 212
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 210
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 206
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 214
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 228
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 226
    :cond_8
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_MAX_GROUP_NUMBER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 218
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 208
    :cond_a
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 216
    :cond_b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 204
    :cond_c
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 197
    :pswitch_1a
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 196
    :pswitch_1b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 195
    :pswitch_1c
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 290
    :sswitch_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 289
    :sswitch_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_DNS_RESULTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 288
    :sswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVER_NOT_ACCEPTABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 285
    :sswitch_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 284
    :sswitch_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MESSAGE_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 275
    :sswitch_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 251
    :sswitch_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERVAL_TOO_BRIEF:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 244
    :sswitch_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 243
    :sswitch_8
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 200
    :sswitch_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 199
    :sswitch_a
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ALTERNATE_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 198
    :sswitch_b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 194
    :sswitch_c
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 191
    :sswitch_d
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 287
    :cond_d
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NOTEXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 286
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 277
    :cond_f
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SECURITY_AGREEMENT_REQD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 276
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNDECEIPHERABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 250
    :cond_11
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXTENSION_REQUIRED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 249
    :cond_12
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_EXTENSION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 193
    :cond_13
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    .line 192
    :cond_14
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_d
        0xb7 -> :sswitch_c
        0x131 -> :sswitch_b
        0x17c -> :sswitch_a
        0x190 -> :sswitch_9
        0x198 -> :sswitch_8
        0x19a -> :sswitch_7
        0x1a7 -> :sswitch_6
        0x1eb -> :sswitch_5
        0x201 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25e -> :sswitch_2
        0x2bf -> :sswitch_1
        0x2c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xcc
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public static translateStackImExtensionHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/Map;)I
    .locals 8
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 557
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 558
    .local v0, "pairOffset":[I
    const/4 v1, 0x0

    .line 559
    .local v1, "i":I
    const/4 v2, -0x1

    .line 560
    .local v2, "KeyOffset":I
    const/4 v3, -0x1

    .line 561
    .local v3, "ValueOffset":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 562
    .local v5, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 563
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 564
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 565
    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 566
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 567
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    aput v7, v0, v1

    .line 568
    .end local v5    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move v1, v6

    goto :goto_0

    .line 570
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    .line 572
    .local v4, "pairVectorOffset":I
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 573
    invoke-static {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 574
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 577
    .local v5, "extraHeaderOffset":I
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->startImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 578
    invoke-static {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->addSipExtensions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 579
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;->endImExtension(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    return v6
.end method

.method public static translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 440
    .local p0, "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translateStackImdnNoti(): notifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipTranslatorCollection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 444
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 445
    .local v3, "noti":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "translateStackImdnNoti(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 457
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    goto :goto_1

    .line 454
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    goto :goto_1

    .line 451
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    goto :goto_1

    .line 448
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    nop

    .line 462
    .end local v3    # "noti":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 463
    :cond_4
    return-object v0
.end method

.method public static translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .line 610
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "departed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "booted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 620
    const/4 v0, 0x0

    return-object v0

    .line 618
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object v0

    .line 616
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BUSY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object v0

    .line 614
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object v0

    .line 612
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5274acef -> :sswitch_3
        -0x4c696bc3 -> :sswitch_2
        0x2e51f9 -> :sswitch_1
        0x37762793 -> :sswitch_0
    .end sparse-switch
.end method

.method public static translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "alerting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "disconnecting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "muted-via-focus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "dialing-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "on-hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "disconnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "dialing-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 604
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 602
    :pswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 600
    :pswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 598
    :pswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 596
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 594
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 592
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 590
    :pswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 588
    :pswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    .line 586
    :pswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5c60cda0 -> :sswitch_8
        -0x525651c5 -> :sswitch_7
        -0x51cc2413 -> :sswitch_6
        -0x2fb8ce8d -> :sswitch_5
        -0x28af7669 -> :sswitch_4
        -0x22860cf7 -> :sswitch_3
        0x43bb877 -> :sswitch_2
        0x78c29c6 -> :sswitch_1
        0x60494106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
