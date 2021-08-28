.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$1:J

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$1:J

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$sendFile$5$FtProcessor(JLjava/lang/String;)V

    return-void
.end method
