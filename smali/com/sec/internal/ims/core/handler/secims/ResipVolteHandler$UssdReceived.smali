.class Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UssdReceived"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;
    }
.end annotation


# instance fields
.field hasErrorCode:Z

.field mString:Ljava/lang/String;

.field mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;

    .line 236
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;-><init>()V

    return-void
.end method


# virtual methods
.method getVolteConstantsUssdStatus()I
    .locals 3

    .line 249
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$1;->$SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type:[I

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid USSD type! - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, -0x1

    return v0

    .line 254
    :cond_0
    return v1

    .line 251
    :cond_1
    return v1
.end method
