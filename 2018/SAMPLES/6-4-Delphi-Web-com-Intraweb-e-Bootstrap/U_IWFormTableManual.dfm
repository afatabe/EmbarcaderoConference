object IWFormTableManual: TIWFormTableManual
  Left = 0
  Top = 0
  Width = 872
  Height = 516
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWBTNINCLUIR: TIWButton
    Left = 16
    Top = 24
    Width = 75
    Height = 25
    Caption = 'IWBTNINCLUIR'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNINCLUIR'
    TabOrder = 0
    OnAsyncClick = IWBTNINCLUIRAsyncClick
  end
  object Paginacao: TIWLabel
    Left = 216
    Top = 19
    Width = 63
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'Paginacao'
    Caption = 'Paginacao'
    RawText = True
  end
  object BotaoPagina: TIWButton
    Left = 336
    Top = 15
    Width = 122
    Height = 25
    Caption = 'BotaoPagina'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BotaoPagina'
    TabOrder = 1
    OnClick = BotaoPaginaClick
  end
  object ItensPagina: TIWComboBox
    Left = 496
    Top = 19
    Width = 65
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnChange = ItensPaginaChange
    NonEditableAsLabel = True
    TabOrder = 2
    ItemIndex = 0
    Items.Strings = (
      '10'
      '25'
      '50'
      '100'
      '200')
    FriendlyName = 'ItensPagina'
    NoSelectionText = '-- N'#227'o Selecionado --'
  end
  object IWBtnFiltro: TIWButton
    Left = 16
    Top = 74
    Width = 121
    Height = 25
    Caption = 'IWBtnFiltro'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBtnFiltro'
    TabOrder = 3
    OnAsyncClick = IWBtnFiltroAsyncClick
  end
  object IWBtnConfirmaFiltro: TIWButton
    Left = 16
    Top = 105
    Width = 121
    Height = 25
    Caption = 'IWBtnConfirmaFiltro'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBtnConfirmaFiltro'
    TabOrder = 4
    OnClick = IWBtnConfirmaFiltroClick
  end
  object Codigo: TIWEdit
    Left = 16
    Top = 162
    Width = 121
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Codigo'
    SubmitOnAsyncEvent = True
    TabOrder = 5
  end
  object Descricao: TIWEdit
    Left = 16
    Top = 183
    Width = 121
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Descricao'
    SubmitOnAsyncEvent = True
    TabOrder = 6
  end
  object Adicionais: TIWEdit
    Left = 16
    Top = 204
    Width = 121
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Adicionais'
    SubmitOnAsyncEvent = True
    TabOrder = 7
  end
  object Ordenacao: TIWComboBox
    Left = 16
    Top = 279
    Width = 121
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NonEditableAsLabel = True
    TabOrder = 8
    ItemIndex = 1
    Items.Strings = (
      'C'#243'digo Produto'
      'Descri'#231#227'o Produto')
    FriendlyName = 'Ordenacao'
    NoSelectionText = '-- No Selection --'
  end
  object IWBTNACAO: TIWButton
    Left = 736
    Top = 16
    Width = 105
    Height = 25
    Css = 'form-control'
    Caption = 'IWBTNACAO'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNACAO'
    TabOrder = 9
    OnClick = IWBTNACAOClick
  end
  object IWACAO: TIWEdit
    Left = 736
    Top = 47
    Width = 105
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWACAO'
    SubmitOnAsyncEvent = True
    TabOrder = 10
    Text = 'IWACAO'
  end
  object IWBtnLimpaFiltro: TIWButton
    Left = 16
    Top = 129
    Width = 121
    Height = 25
    Caption = 'IWBtnLimpaFiltro'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBtnLimpaFiltro'
    TabOrder = 11
    OnClick = IWBtnLimpaFiltroClick
  end
  object IWBTNALTERAR: TIWButton
    Left = 736
    Top = 74
    Width = 121
    Height = 25
    Css = 'form-control'
    Caption = 'IWBTNALTERAR'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNALTERAR'
    TabOrder = 12
    OnAsyncClick = IWBTNALTERARAsyncClick
  end
  object IWBTNEXCLUIR: TIWButton
    Left = 736
    Top = 105
    Width = 121
    Height = 25
    Css = 'form-control'
    Caption = 'IWBTNEXCLUIR'
    Confirmation = 'Confirma a Exclus'#227'o do Registro ?'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWBTNEXCLUIR'
    TabOrder = 13
    OnClick = IWBTNEXCLUIRClick
  end
  object COD_PRODUTO: TIWDBEdit
    Left = 376
    Top = 96
    Width = 121
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'COD_PRODUTO'
    ReadOnly = True
    SubmitOnAsyncEvent = True
    TabOrder = 14
    AutoEditable = False
    DataField = 'COD_PRODUTO'
    PasswordPrompt = False
    DataSource = dsFDQProdutos
  end
  object PROD_DESCRICAO: TIWDBEdit
    Left = 376
    Top = 123
    Width = 121
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'PROD_DESCRICAO'
    MaxLength = 60
    SubmitOnAsyncEvent = True
    TabOrder = 15
    AutoEditable = False
    DataField = 'PROD_DESCRICAO'
    PasswordPrompt = False
    DataSource = dsFDQProdutos
  end
  object PROD_INFO_ADICIONAIS: TIWDBEdit
    Left = 376
    Top = 150
    Width = 121
    Height = 21
    Css = 'form-control'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'PROD_DESCRICAO'
    MaxLength = 255
    SubmitOnAsyncEvent = True
    TabOrder = 16
    AutoEditable = False
    DataField = 'PROD_INFO_ADICIONAIS'
    PasswordPrompt = False
    DataSource = dsFDQProdutos
  end
  object BtnGravar: TIWButton
    Left = 376
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BtnGravar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BtnGravar'
    TabOrder = 17
    OnClick = BtnGravarClick
  end
  object GridManual: TIWLabel
    Left = 221
    Top = 162
    Width = 70
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'GridManual'
    Caption = 'GridManual'
    RawText = True
  end
  object TituloModal: TIWLabel
    Left = 221
    Top = 200
    Width = 72
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'TituloModal'
    Caption = 'TituloModal'
  end
  object BTNCancelar: TIWButton
    Left = 472
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BTNCancelar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'BTNCancelar'
    TabOrder = 18
    OnClick = BTNCancelarClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    MasterFormTag = False
    TagType = ttIntraWeb
    MasterTemplate = 'Master.html'
    RenderStyles = False
    Left = 128
    Top = 352
  end
  object dsFDQProdutos: TDataSource
    DataSet = IWUserSession.FDQProdutos
    Left = 424
    Top = 248
  end
end
