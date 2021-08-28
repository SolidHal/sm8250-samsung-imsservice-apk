.class public final enum Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
.super Ljava/lang/Enum;
.source "RegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PcoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 95
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_DEFAULT"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 96
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_AWAITING"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_POSTPAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 100
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_RESTRICTED_ACCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 101
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_ZERO_BALANCE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 102
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_RATE_THROTTLING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 103
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_SELF_ACTIVATION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 93
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v9, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "pcoType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    .line 108
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    .line 109
    return-void
.end method

.method public static fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 5
    .param p0, "pcoType"    # I

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 113
    .local v3, "t":Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    iget v4, v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    if-ne v4, p0, :cond_0

    .line 114
    return-object v3

    .line 112
    .end local v3    # "t":Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 93
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method
