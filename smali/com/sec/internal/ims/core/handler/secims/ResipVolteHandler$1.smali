.class synthetic Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 249
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->values()[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;->$SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->ordinal()I

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;->$SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type:[I

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->ordinal()I

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;->$SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type:[I

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
