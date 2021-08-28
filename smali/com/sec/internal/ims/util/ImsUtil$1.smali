.class synthetic Lcom/sec/internal/ims/util/ImsUtil$1;
.super Ljava/lang/Object;
.source "ImsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ImsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->values()[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
