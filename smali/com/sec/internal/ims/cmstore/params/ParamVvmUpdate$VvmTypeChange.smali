.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmTypeChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "ACTIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 15
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "DEACTIVATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 16
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "VOICEMAILTOTEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "GREETING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "PIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "FULLPROFILE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 12
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1

    .line 12
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    return v0
.end method
