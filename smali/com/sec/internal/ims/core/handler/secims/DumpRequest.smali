.class Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mTimeStamp:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTag:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mValue:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTimeStamp:Ljava/lang/String;

    .line 209
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->checkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "***"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
