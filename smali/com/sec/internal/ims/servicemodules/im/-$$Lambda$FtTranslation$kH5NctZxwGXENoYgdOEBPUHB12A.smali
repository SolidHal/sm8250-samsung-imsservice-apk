.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtTranslation;JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$1:J

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$2:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$1:J

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$2:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtTranslation$kH5NctZxwGXENoYgdOEBPUHB12A;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->lambda$handleFileResizeResponse$2$FtTranslation(JLjava/lang/String;Z)V

    return-void
.end method
