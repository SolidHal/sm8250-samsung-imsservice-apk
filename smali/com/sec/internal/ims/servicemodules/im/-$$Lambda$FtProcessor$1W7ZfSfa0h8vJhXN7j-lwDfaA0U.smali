.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$10:Z

.field public final synthetic f$11:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$3:Lcom/sec/ims/util/ImsUri;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$6:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$7:Z

    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$8:Z

    iput-boolean p10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$9:Z

    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$10:Z

    iput-object p12, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$11:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iput-boolean p13, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$12:Z

    iput-boolean p14, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$13:Z

    iput-object p15, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$14:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$3:Lcom/sec/ims/util/ImsUri;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$4:Ljava/util/Set;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$6:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$7:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$8:Z

    iget-boolean v9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$9:Z

    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$10:Z

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$11:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iget-boolean v12, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$12:Z

    iget-boolean v13, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$13:Z

    iget-object v14, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;->f$14:Ljava/lang/String;

    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$attachFileToSingleChat$3$FtProcessor(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    return-object v0
.end method
