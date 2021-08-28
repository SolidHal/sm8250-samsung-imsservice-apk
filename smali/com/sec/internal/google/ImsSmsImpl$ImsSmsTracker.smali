.class Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsSmsTracker"
.end annotation


# instance fields
.field public mContentType:Ljava/lang/String;

.field private final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDestAddress:Ljava/lang/String;

.field public mMessageId:I

.field public mPdu:[B

.field public mPhoneId:I

.field public mRetryCount:I

.field public mSentComplete:Z

.field public mStatusReportRequested:Z

.field public mToken:I


# direct methods
.method private constructor <init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p3, "token"    # I
    .param p4, "retryCount"    # I
    .param p5, "messageId"    # I
    .param p6, "pdu"    # [B
    .param p7, "destAddress"    # Ljava/lang/String;
    .param p8, "contentType"    # Ljava/lang/String;
    .param p9, "StatusReportRequested"    # Z
    .param p10, "sentComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;III[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1333
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    .line 1335
    iput-object p2, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mData:Ljava/util/HashMap;

    .line 1336
    iput p3, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 1337
    iput p4, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1338
    iput p5, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 1339
    iput-object p6, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    .line 1340
    iput-object p7, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1341
    iput-object p8, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    .line 1342
    iput-boolean p9, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    .line 1343
    iput-boolean p10, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 1344
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/google/ImsSmsImpl$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/HashMap;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # [B
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Lcom/sec/internal/google/ImsSmsImpl$1;

    .line 1320
    invoke-direct/range {p0 .. p10}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1351
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    return v0
.end method

.method public getToken()I
    .locals 1

    .line 1347
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    return v0
.end method
