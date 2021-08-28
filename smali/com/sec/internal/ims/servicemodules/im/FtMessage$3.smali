.class synthetic Lcom/sec/internal/ims/servicemodules/im/FtMessage$3;
.super Ljava/lang/Object;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 745
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
