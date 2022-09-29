# -*- coding: utf-8 -*-
from ast import Lambda
from odoo import models, fields, api, _
import logging

_logger = logging.getLogger(__name__)
class ResPartner(models.Model):
    _inherit = 'res.partner'


    def create(self, vals):
        _logger.info('### vals %s' % vals)
        res = super(ResPartner, self).create(vals)
        return res