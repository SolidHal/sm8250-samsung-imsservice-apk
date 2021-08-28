.class synthetic Lcom/sec/internal/ims/core/cmc/CmcInfo$1;
.super Ljava/lang/Object;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

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
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

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
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

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
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
