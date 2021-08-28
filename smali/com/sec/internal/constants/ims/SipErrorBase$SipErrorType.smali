.class public final enum Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
.super Ljava/lang/Enum;
.source "SipErrorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/SipErrorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 132
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 133
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "ERROR_4XX"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "ERROR_5XX"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v3, v6}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 135
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "ERROR_6XX"

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 131
    new-array v1, v5, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    aput-object v2, v1, v3

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->$VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->mType:I

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    const-class v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
    .locals 1

    .line 131
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->$VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 2
    .param p1, "errorCode"    # I

    .line 148
    iget v0, p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->mType:I

    div-int/lit8 v1, p1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lcom/sec/ims/util/SipError;)Z
    .locals 1
    .param p1, "sipError"    # Lcom/sec/ims/util/SipError;

    .line 144
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(I)Z

    move-result v0

    return v0
.end method
