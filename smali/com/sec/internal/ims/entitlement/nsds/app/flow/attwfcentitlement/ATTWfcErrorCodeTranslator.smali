.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;
.super Ljava/lang/Object;
.source "ATTWfcErrorCodeTranslator.java"


# static fields
.field private static final ENTITLEMENT_CHECK_MAX_RETRY:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sMapE911FilteredFailureCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMapE911FilteredSuccessCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->LOG_TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    .line 20
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x9c5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x9c6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8ff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    .line 32
    const/16 v7, 0x8fd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterSuccessCodeWithE911Validity(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;ILjava/lang/String;)I
    .locals 2
    .param p0, "dbHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .param p1, "deviceEventType"    # I
    .param p2, "deviceUid"    # Ljava/lang/String;

    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isE911InfoAvailForNativeLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredSuccessCodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "filteredCode":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 75
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 78
    .end local v0    # "filteredCode":Ljava/lang/Integer;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->sMapE911FilteredFailureCodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .restart local v0    # "filteredCode":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 80
    const/16 v1, 0x8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static translateErrorCode(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;IZIILjava/lang/String;)I
    .locals 3
    .param p0, "dbHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
    .param p1, "deviceEventType"    # I
    .param p2, "success"    # Z
    .param p3, "nsdsErrorCode"    # I
    .param p4, "retryCount"    # I
    .param p5, "deviceUid"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateErrorCode: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "nsdsErrorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, -0x1

    .line 46
    .local v0, "errorCode":I
    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_2

    const/16 v1, 0x416

    if-eq p3, v1, :cond_1

    const/16 v1, 0x9c4

    if-eq p3, v1, :cond_0

    const/16 v1, 0x8fc

    if-eq p3, v1, :cond_0

    const/16 v1, 0x8fd

    if-eq p3, v1, :cond_0

    .line 63
    invoke-static {p1, p2, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->translateErrorCodeByEventType(IZI)I

    move-result v0

    goto :goto_0

    .line 60
    :cond_0
    move v0, p3

    .line 61
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 52
    const/16 v0, 0x8fd

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0, p1, p5}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->filterSuccessCodeWithE911Validity(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;ILjava/lang/String;)I

    move-result v0

    .line 49
    nop

    .line 66
    :cond_3
    :goto_0
    return v0
.end method

.method private static translateErrorCodeByEventType(IZI)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "success"    # Z
    .param p2, "retryCount"    # I

    .line 87
    if-eqz p1, :cond_0

    .line 88
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "translateErrorCodeByEventType: result cannot be success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, -0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, -0x1

    .line 92
    .local v0, "errorCode":I
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_5

    const/16 v2, 0x9

    if-eq p0, v2, :cond_3

    const/16 v2, 0xa

    if-eq p0, v2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    if-ne p2, v1, :cond_2

    .line 98
    const/16 v0, 0x8fd

    goto :goto_0

    .line 100
    :cond_2
    const/16 v0, 0x8fc

    .line 102
    goto :goto_0

    .line 104
    :cond_3
    const/16 v0, 0x8fd

    .line 105
    goto :goto_0

    .line 94
    :cond_4
    const/16 v0, 0x8fd

    .line 95
    goto :goto_0

    .line 109
    :cond_5
    const/16 v0, 0x8ff

    .line 112
    :goto_0
    return v0
.end method
