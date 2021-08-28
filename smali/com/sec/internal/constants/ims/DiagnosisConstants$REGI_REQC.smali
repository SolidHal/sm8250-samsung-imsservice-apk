.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REGI_REQC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 402
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 403
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "INITIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 404
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "REFRESH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 405
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "HAND_OVER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 406
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "RE_REGI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 407
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    const-string v1, "DE_REGI"

    const/4 v7, 0x5

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->DE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 401
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    .line 413
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 401
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 1

    .line 401
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->mCode:I

    return v0
.end method
