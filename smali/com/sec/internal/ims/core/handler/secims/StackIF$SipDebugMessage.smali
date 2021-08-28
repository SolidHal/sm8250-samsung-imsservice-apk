.class Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
.super Ljava/lang/Object;
.source "StackIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/StackIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SipDebugMessage"
.end annotation


# instance fields
.field private mIsEncrypted:Z

.field private mIsRx:Z

.field private mMethod:Ljava/lang/String;

.field private mPhoneId:I

.field private mSipMessage:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "sip"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .param p4, "isRx"    # Z
    .param p5, "phoneId"    # I

    .line 3010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3011
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3012
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3013
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3014
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3015
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    .line 3016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    .line 3017
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/sec/internal/ims/core/handler/secims/StackIF$1;

    .line 3002
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1, "sip"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .param p4, "isRx"    # Z
    .param p5, "phoneId"    # I
    .param p6, "isEncrypted"    # Z

    .line 3019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3020
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3021
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3022
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3023
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3024
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    .line 3025
    iput-boolean p6, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    .line 3026
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/sec/internal/ims/core/handler/secims/StackIF$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/sec/internal/ims/core/handler/secims/StackIF$1;

    .line 3002
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3002
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   slot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    if-eqz v1, :cond_0

    const-string v1, "[<--] "

    goto :goto_0

    :cond_0
    const-string v1, "[-->] "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
